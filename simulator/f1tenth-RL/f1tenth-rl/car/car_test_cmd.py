import rospy
from ackermann_msgs.msg import AckermannDriveStamped
from rospy.exceptions import ROSException

from threading import Thread
import time
import argparse

try:
    from geometry_msgs.msg import PoseStamped
except ImportError:
    pass

try:
    from car.sensors import Sensors
except ImportError:
    from sensors import Sensors

PUBLISHER_WAIT = 0.005

MAX_SPEED_REDUCTION = 4.5
STEERING_SPEED_REDUCTION = 4.5
BACKWARD_SPEED_REDUCTION = 4.5
LIGHTLY_STEERING_REDUCTION = 2.4
BACKWARD_SECONDS = 1.5

MAX_SPEED_REDUCTION_SIM = 1
STEERING_SPEED_REDUCTION_SIM = 1.4
BACKWARD_SPEED_REDUCTION_SIM = 3
LIGHTLY_STEERING_REDUCTION_SIM = 2.4
BACKWARD_SECONDS_SIM = 1.5
USE_RESET_INSTEAD_OF_BACKWARDS_SIM = False

MIN_SPEED_REDUCTION = 5

class Drive():
    def __init__(self, sensors, is_simulator=True): # original value is False. Xiaoyin changed it into True, to test 
        print("init is called!")
        self.is_simulator = is_simulator
        is_simulator =True
        if not is_simulator: # real car
            topic = "/vesc/high_level/ackermann_cmd_mux/input/nav_0"
            max_steering = 0.34
            self.max_speed_reduction = MAX_SPEED_REDUCTION
            self.steering_speed_reduction = STEERING_SPEED_REDUCTION
            self.backward_speed_reduction = BACKWARD_SPEED_REDUCTION
            self.lightly_steering_reduction = LIGHTLY_STEERING_REDUCTION
            self.backward_seconds = BACKWARD_SECONDS
        else: # on simulator
            topic = "/drive"
            max_steering = 0.4189
            self.max_speed_reduction = MAX_SPEED_REDUCTION_SIM
            self.steering_speed_reduction = STEERING_SPEED_REDUCTION_SIM
            self.backward_speed_reduction = BACKWARD_SPEED_REDUCTION_SIM
            self.lightly_steering_reduction = LIGHTLY_STEERING_REDUCTION_SIM
            self.backward_seconds = BACKWARD_SECONDS_SIM
            self.reset_publisher = rospy.Publisher("/pose", PoseStamped, queue_size=0) # publish the datd to "/pose" // reset_publisher
            
        self.max_speed = rospy.get_param("max_speed", 5) # max speed is 5
        self.max_steering = rospy.get_param("max_steering", max_steering)

        self.drive_publisher =  rospy.Publisher(topic, AckermannDriveStamped, queue_size=0) # publish the data to "/drive" // drive_publisher
        self.sensors = sensors
        
        self.stop() #  Here in sttop function, you called send_drive_command function
        
        #self.send_drive_command(2,0)
        
        #time.sleep(1)
        #self.stop()
        
        process = Thread(target=self.drive_command_runner)
        process.daemon = True
        process.start()
        print("max_speed: ", self.max_speed, ", max_steering: ", self.max_steering)

    def forward(self):
        print('forward is called')
        #print('self.max_speed:',self.max_speed)
        #print('self.max_speed_reduction:',self.max_speed_reduction)
        
        #self.send_drive_command(self.max_speed/self.max_speed_reduction, 0)
        self.send_drive_command(2,0)
        
    
    def backward(self):
        self.send_drive_command(-self.max_speed/self.backward_speed_reduction, 0)

    def brake(self):
        self.send_drive_command(0, 0)
    
    def stop(self):
        self.send_drive_command(-1, 0) # in stop, I set speed as 0
    
    def right(self):
        self.send_drive_command(1, -self.max_steering)

    def left(self):
        self.send_drive_command(1, self.max_steering)

    def lightly_right(self):
        self.send_drive_command(1, -self.max_steering/self.lightly_steering_reduction)

    def lightly_left(self):
        self.send_drive_command(1, self.max_steering/self.lightly_steering_reduction)

    def slowdown(self):
        speed = self.last_speed/2 if self.last_speed/2 > self.max_speed/MIN_SPEED_REDUCTION else self.max_speed/MIN_SPEED_REDUCTION
        self.send_drive_command(speed, self.last_angle)
        
    # Xiaoyin test func   
    # set target speed as  5.8 m/s  , from matlab 
    # use Sensor() to get he current data.
    # use speed control set to 0 to brake
    #def command_generator(self):
        
    #    speed = 5.8
        
        # set a t
    #   time.time()
       
    # this func send "speed" & "steering_angle command to the /drive topic. 
    #The structure of ackermandrivestampd(): 
    #steering_angle: 0.0
    #steering_angle_velocity: 0.0
    #speed: 0.10000000149
    #acceleration: 0.0
    #jerk: 0.0
    
    # If I wanna modify it into torque cotrol. I need to replace "speed" with "acceleration" msg, 
    #and send to /drive topic. 

    def send_drive_command(self, acc, steering_angle):
        self.last_angle = steering_angle
        #print('speed in the "send_drive_command" func:',speed)
        #speed = 0.1 # test. To get This speed value, use  " rostopic echo drive " command in terminal
        #acc = 4
        pose_msg = PoseStamped()
        #print('PoseStamped.pose.position.x:',pose_msg.pose.position.x)
        #print('PoseStamped.pose.position.x:',pose_msg.pose.position.y)
        #self.last_speed = speed
        ack_msg = AckermannDriveStamped()
        #ack_msg.drive.speed = speed
        ack_msg.drive.steering_angle = steering_angle
        
        ack_msg.drive.acceleration = acc
        self.ack_msg = ack_msg

    def drive_command_runner(self):
        while True:
            try:
                self.drive_publisher.publish(self.ack_msg) # publish speed & steering_angle msg to topic "/drive"
            except ROSException as e:
                if str(e) == "publish() to a closed topic":
                    pass
                else:
                    raise e
            time.sleep(PUBLISHER_WAIT)

    def backward_until_obstacle(self):
        if USE_RESET_INSTEAD_OF_BACKWARDS_SIM and self.is_simulator:
            self.reset_simulator()
        else:
            self.backward()   # RUN BACKWARD
            start = time.time()
            while not self.sensors.back_obstacle() and time.time() - start < self.backward_seconds:
                time.sleep(0.01)
            self.stop()
            time.sleep(0.1)


    def reset_simulator(self):
        if self.is_simulator:
            self.reset_publisher.publish(PoseStamped())


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--simulator", action='store_true', help="to set the use of the simulator")
    args = parser.parse_args()

    run_seconds = 0.3
    rospy.init_node('drive_test')   # Name of node .   Initialize the node
    print('args.simulator:', args.simulator)
    drive = Drive(args.simulator) # 3 for speed
    while not rospy.is_shutdown():
        print("Write command")
        cmd = input()
        start = time.time()
        if cmd == "w":
            while time.time() - start < run_seconds:
                #time.sleep(0.1)
                drive.forward()
        if cmd == "s":
            while time.time() - start < run_seconds:
                drive.backward()
        if cmd == "a":
            while time.time() - start < run_seconds:
                drive.lightly_left()
        if cmd == "d":
            while time.time() - start < run_seconds:
                drive.lightly_right()
        if cmd == "aa":
            while time.time() - start < run_seconds:
                drive.left()
        if cmd == "dd":
            while time.time() - start < run_seconds:
                drive.right()
        if cmd == " ":
            while time.time() - start < run_seconds:
                drive.stop()
        if cmd == "buo":
            drive.backward_until_obstacle()
        if cmd == "q":
            exit()

