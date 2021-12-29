
#from sklearn import preprocessing
import sys
sys.path.append('/opt/ros/kinetic/lib/python2.7/dist-packages')
import rospy

import rospy
#from ackermann_msgs.msg import AckermannDriveStamped
from rospy.exceptions import ROSException
from std_msgs.msg import Float64MultiArray   

from threading import Thread
import time
import argparse
import numpy as np

try:
    from geometry_msgs.msg import PoseStamped
except ImportError:
    pass
    
class Drive():
    def __init__(self):

        #self.throttle = action[0]   #{0~1}
        #self.steer = action[1]      #{-1~1}
        #self.brake = action[2]      #binary: [0,1]   0: No brake ; 1: Brake!
        
        self.cmd  = Float64MultiArray() # msg to publish
        #initialize the length
        self.cmd.data.append(0)
        self.cmd.data.append(0)
        self.cmd.data.append(0)       
        topic = "RC01s/carsimCmd" # ATTENTION! C Capital
        self.drive_publisher = rospy.Publisher(topic, Float64MultiArray, queue_size=0)
        process = Thread(target= self.drive_command_runner) #? About publisher
        process.daemon = True # ?
        process.start()   
    def throttle(self,throttle_value=1.0):
        status = 7
        throttle = throttle_value
        steer = 0.0
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = throttle #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
        # time.sleep(0.2)
    def steer_left(self,steer_value=1.0):
        status = 7
        throttle = 1.0
        steer = steer_value
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = throttle #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
        # time.sleep(0.2)
    def steer_right(self,steer_value=-1.0):
        status = 7
        throttle = 1.0
        steer = steer_value
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = throttle #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
        # time.sleep(0.2)
    def drift_left(self,steer_value=1.0):
        status = 8 # brake
        throttle = 0.0
        steer = steer_value
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = throttle #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
    
    def drift_right(self,steer_value=-1.0):
        status = 8 # brake
        throttle = 0.0
        steer = steer_value
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = throttle #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
        # time.sleep(0.2)
    def action(self,action):

        self.throttle = action[0]
        #self.throttle = actions[0]   #{0~1}
        #sign = math.copysign(1, norm) # -1.0 OR 1.0
        self.steer = action[1]
        #self.steer = actions[1]      #{-1~1}
        self.brake = action[2]      #binary: [0,1]   0: No brake ; 1: Brake!
        # print('steer, action[1]:',actions[1])        
        if self.brake ==0: # slf.brake =0; No brake 
            status = 7       # torque drive
            torque = self.throttle
            steer = self.steer
        else:  # brake =1; Brkae!    
            status = 8       # wheelspeed control 
            torque = 0
            steer = self.steer
        self.cmd.data[0]= status #msg.data[0]
        self.cmd.data[1] = torque #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]  
        time.sleep(0.2)
         

    def reset(self): 
    
        status = 4 # RESET
        torque = 0.0
        steer = 0.0
        self.cmd.data[0] = status #msg.data[0]
        self.cmd.data[1] = torque #msg.data[1]
        self.cmd.data[2] = steer #msg.data[2]    
        
        #self.cmd.data.append(status) #msg.data[0]
       
        #self.cmd.data.append(torque) #msg.data[1]
        
        #self.cmd.data.append(steer) #msg.data[2]    
    def drive_command_runner(self):
        while True:
            try:
                self.drive_publisher.publish(self.cmd)
            except ROSException as e:
                print("ROSException")
                if str(e) == "publish() to a closed topic":
                    pass
                else:
                    raise e
            PUBLISHER_WAIT = 0.005      # What is this >???????????!!!!!!!!!!!!!!  
            time.sleep(PUBLISHER_WAIT)  # What is this >???????????!!!!!!!!!!!!!!      
        
# test this file-----#
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--simulator", action='store_true', help="to set the use of the simulator")
    args = parser.parse_args()
    run_seconds = 0.3
    rospy.init_node('drive_test')
    drive = Drive()
    while not rospy.is_shutdown():
        print("Write command")
        cmd = input()
        start = time.time()
        if cmd == "w":
            while time.time() - start < run_seconds:
                print("w is activated")
                drive.action([50, 100, 0]) # 100 is no steer
        if cmd == "a": # empty torque
            while time.time() - start < run_seconds:
                drive.action([50, 200, 0])
        if cmd == "b": # empty torque
            while time.time() - start < run_seconds:
                drive.action([0, 100, 1])        
        if cmd == "q":
            exit()                

            
