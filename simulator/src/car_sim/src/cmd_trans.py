import rospy
from ackermann_msgs.msg import AckermannDriveStamped
from rospy.exceptions import ROSException

from std_msgs.msg import Float64MultiArray   

try:
    from geometry_msgs.msg import PoseStamped
except ImportError:
    pass

from std_msgs.msg import String

from scipy.integrate import odeint
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.pyplot import title, legend
import math
import time


#------------------------
class subscribe_drive():
    
    def __init__(self):
    
        self.sub = rospy.Subscriber("/drive",AckermannDriveStamped, self.data_callback) 
        
        rospy.wait_for_message("/drive", AckermannDriveStamped)
        
    def data_callback(self, AckermannDriveStamped):
    
    
        self.torque = AckermannDriveStamped.drive.acceleration
        self.steer= AckermannDriveStamped.drive.steering_angle
        self.jerk = AckermannDriveStamped.drive.jerk


if __name__ == '__main__':



    rospy.init_node('cmd_trans',anonymous=True)
    
    print('subscribing???...')
    
    sim_freq = 200.0
    rate =rospy.Rate(sim_freq) #    200 times per second

    pub =rospy.Publisher('/RC01s/carsimCmd', Float64MultiArray, queue_size =10 ) 
    
    cmd_orig = subscribe_drive()
    
    while not rospy.is_shutdown():
    
        if cmd_orig.jerk == 1: # RESET
            status = 4.0 #RESET
        else:
            
            if cmd_orig.torque >= 0.0:
                
                status =7
                torque = cmd_orig.torque
                steer = cmd_orig.steer
                
            else:
                
                status =8
                torque =0.0
                steer =cmd_orig.steer
                 
        rate.sleep()
        

            
        cmd  = Float64MultiArray()
            
        #state_msg.data = [None] * len(x_MB)
        
        cmd.data.append(status) #msg.data[0]
       
        cmd.data.append(torque) #msg.data[1]
        
        cmd.data.append(steer) #msg.data[2]
        print("cmd data:")
        print(cmd.data[0])
        print(cmd.data[1])
        print(cmd.data[2])
        pub.publish (cmd)    

     
