import sys
import rospy

from std_msgs.msg import Float64MultiArray   
import time
import math
import argparse
import subprocess
import numpy

class Sensor():
    def __init__(self):
        self.cnt = 0
        self.state_subscriber = rospy.Subscriber("/RC01s/data", Float64MultiArray, self.state_callback,queue_size=10000,tcp_nodelay=True)
        rospy.wait_for_message("/RC01s/data", Float64MultiArray)

    def state_callback(self, Float64MultiArray):    
        self.cnt+=1
        # print(self.cnt)
        sensor_data = []
        self.x = Float64MultiArray.data[0]
        
        self.y= Float64MultiArray.data[1]
        self.vx= Float64MultiArray.data[2]
        self.vy= Float64MultiArray.data[3]
        self.yaw= Float64MultiArray.data[4]
        self.r= Float64MultiArray.data[5]
        self.wf= Float64MultiArray.data[6]
        self.wr= Float64MultiArray.data[7]
        self.beta = numpy.arctan2(self.vy,self.vx)
        
        sensor_data.append(self.x) #1
        sensor_data.append(self.y) #2
        sensor_data.append(self.vx)#3               
        sensor_data.append(self.vy)#4
        sensor_data.append(self.yaw)#5
        sensor_data.append(self.r) #6
        sensor_data.append(self.beta)#7
        
                                                
        self.obs = sensor_data
        #print("in sensorpy, self.obs length:",len(self.obs))

        
        
    def get_distance_error(self):
        target_x = 4.6
        target_y = 3
        return math.sqrt( (target_x-self.x) **2 + (target_y-self.y) **2 )
    
    def get_yaw_error(self):  
        
        target_yaw = -3.14159
        return abs(target_yaw-self.yaw)
        

if __name__ == '__main__':        
    rospy.init_node('sensors_test')
    sensor =Sensor()
    time.sleep(1)
    while not rospy.is_shutdown():
        print("###---###")
        print("sensor.x:",sensor.x)
        print("observation list:", sensor.obs)
