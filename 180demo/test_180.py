#!/usr/bin/env python 
# coding=utf-8

import rospy
import numpy as np
from std_msgs.msg import Float64MultiArray   
import pandas as pd
try:
    from geometry_msgs.msg import PoseStamped
except ImportError:
    pass

from std_msgs.msg import String

from scipy.integrate import odeint
import matplotlib.pyplot as plt
from matplotlib.pyplot import title, legend
import math
import time
import csv

save_csv = './kin_data4w_180.csv'
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
def cmd_reset(pub):
    cmd  = Float64MultiArray()
    reset_status = 4.0 #reset
    cmd.data.append(reset_status) #msg.data[0]   
    cmd.data.append(0) #msg.data[1]，reset时这个数值不重要
    cmd.data.append(0) #msg.data[2]，reset时这个数值不重要
    pub.publish (cmd)
# run simulations *****************
if __name__ == '__main__':

    rospy.init_node('sub_drive',anonymous=True)
    print('subscribing')

    x=[]
    y=[]
    vx=[]
    vy=[]
    yaw=[]
    yaw_rate=[]
    wf=[]
    wr=[]
    
    sim_freq = 90
    rate = rospy.Rate(sim_freq) #    200 times per second
    j=0

    pub = rospy.Publisher('/RC01s/carsimCmd', Float64MultiArray, queue_size =10 ) #topic name is state_topic
    
    
    v_flag = True
    vth= 5.0
    t_start = time.time()
    r = 0.054 # wheel radius

    kin_data = subscribe_data()
    Status =[]
    Omega =[]
    Steer =[]
    cmd_reset(pub) # 初始化命令
    while not rospy.is_shutdown():
        # test cmd
        if v_flag:
            status = 7.
            omega = 0.85
            steer = 0.
            print("ACCELERATING!!! GO!")
            print('Vx:',kin_data.vx)
        
        if v_flag  and abs(kin_data.vx) >= vth:
            # steer, no imput   
            steer_time = time.time() - t_start         
            steer_len = len(x) # current length of x
            print('steer_len:',steer_len)
            print('begin to steer')
            v_flag = False

        if v_flag == False:
            #if time.time()-t_start - steer_time < 0.26:
            if len(x) - steer_len < 0.338*sim_freq: 
                #  steer, torque command
                status = 7
                omega= 0.83
                steer = -1.  # max steer
                print('steer')
            else:
                status = 8
                print('len(x):',len(x))
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
        print(cmd.data[0])
        print(cmd.data[1])
        print(cmd.data[2])
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

        if len(x) >= sim_freq*5: # 5 second simulation. Then break
            print("Total yaw angle:", yaw[-1])
            break

        rate.sleep()
    
    # write data in .csv
    x,y,vx,vy,yaw,yaw_rate,wf,wr,Status,Omega,Steer=np.array(x),np.array(y),np.array(vx),np.array(vy),np.array(yaw),np.array(yaw_rate,),np.array(wf),np.array(wr),np.array(Status),np.array(Omega),np.array(Steer)
    data_array = np.stack((x,y,vx,vy,yaw,yaw_rate,wf,wr,Status,Omega,Steer),axis=1)
    df = pd.DataFrame(data_array,index=None,columns=['x','y','vx','vy','yaw','yaw_rate','wf','wr','Status','Omega','Steer'])
    df.to_csv(save_csv,index=None)
    
    timer = np.arange(0, 5, 1./sim_freq)
    # print("length of t", len(timer))
    
    # beta = numpy.arctan2(vy,vx)
    # title('slip angle VS time')
    # plt.plot(timer,beta)
    # plt.show()
    
    # title('vx&vy VS time')
    # plt.plot(timer,vx,'r')
    # plt.plot(timer,vy,'g')
    # plt.grid()
    # legend(['vx','vy'])
    # plt.show()
    
    title('yaw angle vs time')
    plt.plot(timer,yaw)
    plt.savefig('yaw_angle.png')
    plt.show()
    
    # title('yaw rate vs time')
    # plt.plot(timer,yaw_rate)
    # plt.show()
    
        
    # title('position STD; equal')
    # plt.plot(x,y)
    # plt.gca().set_aspect('equal', adjustable='box')
    # plt.show()
    
    # title('wf & wr vs time')
    # plt.plot(timer,wf,'b')
    # plt.plot(timer,wr,'y')
    # plt.grid()
    # legend(['wf','wr']) 
    # plt.show()

    # title('status & omega&  vs time')
    # plt.plot(Status,'b')
    # plt.plot(Omega,'y')
    # plt.plot(Steer,'r')
    plt.plot(timer,Status,'b')
    plt.plot(timer,Omega,'y')
    plt.plot(timer,Steer,'r')
    legend(['Status','Omega','Steer'])   
    plt.savefig("status-omega-time.png")
    plt.show() 

    
    cmd_reset(pub)   
   
    


