#!/usr/bin/env python 
# coding=utf-8
#Functions for testing different vehicle models (see examples in chap. 11 of documentation)

from __future__ import print_function

  

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
import numpy
import matplotlib.pyplot as plt
from matplotlib.pyplot import title, legend
import math
import time
import csv
#from utils.utils import make_dir


#------------------------
class subscribe_data():
    
    def __init__(self):
    
        self.sub = rospy.Subscriber("/RC01s/data",Float64MultiArray, self.data_callback) 
        
        rospy.wait_for_message("/RC01s/data", Float64MultiArray)
        
    def data_callback(self, Float64MultiArray):
    
        self.x = Float64MultiArray.data[0]
        self.y= Float64MultiArray.data[1]
        self.vx= Float64MultiArray.data[2]
        self.vy= Float64MultiArray.data[3]
        self.yaw= Float64MultiArray.data[4]
        self.r= Float64MultiArray.data[5]
        self.wf= Float64MultiArray.data[6]
        self.wr= Float64MultiArray.data[7]
        
    





# run simulations *****************
if __name__ == '__main__':



    rospy.init_node('sub_drive',anonymous=True)
   
    
    print('subscribing???')
    
    
    sim_freq = 200.0
    rate =rospy.Rate(sim_freq) #    200 times per second

    pub =rospy.Publisher('/RC01s/carsimCmd', Float64MultiArray, queue_size =10 ) #topic name is state_topic
    
    
    # # reset to start point
    # cmd_reset  = Float64MultiArray()
        
    # reset_status = 4.0 #reset
    
    # cmd_reset.data.append(reset_status) #msg.data[0]   
    # cmd_reset.data.append(0.0) #msg.data[1]
    # cmd_reset.data.append(0.0) #msg.data[2]
    
    # print(cmd_reset.data[0])

    # pub.publish (cmd_reset)
    # END of Reset 

    

    kin_data = subscribe_data()
   
    r = 0.054 # wheel radius

    vth = 4.0

    while vth < 6.0: # vth [4.0, 4.1, 4.2,.....5.8, 5.9, 6.0]
        vth += 0.1
        print('vth is:', vth)
    #   
        x=[]
        y=[]
        vx=[]
        vy=[]
        yaw=[]
        yaw_rate=[]
        wf=[]
        wr=[]
        Status =[]
        Omega =[]
        Steer =[]

        v_flag = True
        tStart = time.time()
        
        j = 0
        
        while not rospy.is_shutdown():
            j+=1
            print('j:',j)
            print('len(x):',len(x))
            # test cmd
            if v_flag:
                status = 7.
                omega =1.0
                steer = 0.
                print("ACCELERATING!!! GO!")
                print('Vx:',kin_data.vx)
 
            if v_flag  and abs(kin_data.vx) >= vth:
                # steer, no imput   
                steer_time = time.time() - tStart         
                steer_len = len(x) # current length of x
                print('steer_len:',steer_len)
                print('begin to steer')
                v_flag = False
                


            if v_flag == False:
                
                if len(x) - steer_len < 0.27*200.: # DT =1/200
                    #  steer, torque command
                    status = 7
                    omega= 0.99
                    steer = -1.  # max steer
                    print('steer')

                else:
                    status =8
                   
                    print('steer_len:',steer_len)
                    
                    omega =0.
            
                        
                    steer =-1.  # FAN DA!  Counter Steer!
                    print('BRAKE!')
            Status.append(status)
            Omega.append(omega)
            Steer.append(steer)
            # change data type to "Float64MultiArray"!!!!!!!
            cmd  = Float64MultiArray()
            
            #state_msg.data = [None] * len(x_MB)
            
            cmd.data.append(status) #msg.data[0]
        
            cmd.data.append(omega) #msg.data[1]
            
            cmd.data.append(steer) #msg.data[2]
            
            print('cmd.data[0]:',cmd.data[0])
            print('cmd.data[0]:',cmd.data[1])
            print('cmd.data[0]:',cmd.data[2])
            pub.publish (cmd)
            #print('msg published.....')

            
            x.append(kin_data.x)
            y.append(kin_data.y)
            vx.append(kin_data.vx)
            vy.append(kin_data.vy)
            yaw.append(kin_data.yaw)
            yaw_rate.append(kin_data.r)
            wf.append(kin_data.wf)
            wr.append(kin_data.wr)
            print('appending is finished for one step.')

            
            if len(x) >= 1000: # 5 second simulation. Then break
                print("Total yaw angle:", yaw[-1])
                break
            # END of while not rospy.is_shutdown():    
            
            
            rate.sleep()
            # END OF WHILE LOOP!!!
        
        # write data in .csv
        # Still in while vth <= 6.0:
        data = [x,
                y,
                vx,
                vy,
                yaw,
                yaw_rate,
                wf,
                wr,
                Status,
                Omega,
                Steer]    
                    
        # write the data in csv file in such form
        root_path = "/media/crl/DATA/Desktop/f1car/data/velo_sens1"
        csvfile_path = root_path + f"/velo_sens{vth}.csv"
        
        with open(csvfile_path, 'w') as csv_file:

        #csv_file =open('/media/crl/DATA/anaconda3/f1ten_4w1/data/kin_data4w_180.csv', 'w')

            csv_writer = csv.writer(csv_file,delimiter =",")
            for row in data:
                csv_writer.writerow(row)

            csv_file.close()
            # END of writing data!!!

        
        timer = numpy.arange(0, 5, 1./sim_freq)

        
        beta = numpy.arctan2(vy,vx)
        

        #
        print('reset is called!!!')
        cmd_reset  = Float64MultiArray()
        
        reset_status = 4.0 #reset
        
        cmd_reset.data.append(reset_status) #msg.data[0]   
        cmd_reset.data.append(omega) #msg.data[1]
        cmd_reset.data.append(steer) #msg.data[2]
        
        print(cmd_reset.data[0])

        pub.publish (cmd_reset)


    
    print('END of program')    #



        



