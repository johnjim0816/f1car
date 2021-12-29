#!/usr/bin/env python 
# coding=utf-8
#Functions for testing different vehicle models (see examples in chap. 11 of documentation)

from __future__ import print_function

    #states 29
    #x1 = x-position in a global coordinate system
    #x2 = y-position in a global coordinate system
    #x3 = steering angle of front wheels
    #x4 = velocity in x-direction
    #x5 = yaw angle
    #x6 = yaw rate

    #x7 = roll angle
    #x8 = roll rate
    #x9 = pitch angle
    #x10 = pitch rate
    #x11 = velocity in y-direction
    #x12 = z-position
    #x13 = velocity in z-direction

    #x14 = roll angle front
    #x15 = roll rate front
    #x16 = velocity in y-direction front
    #x17 = z-position front
    #x18 = velocity in z-direction front

    #x19 = roll angle rear
    #x20 = roll rate rear
    #x21 = velocity in y-direction rear
    #x22 = z-position rear
    #x23 = velocity in z-direction rear

    #x24 = left front wheel angular speed
    #x25 = right front wheel angular speed
    #x26 = left rear wheel angular speed
    #x27 = right rear wheel angular speed

    #x28 = delta_y_f
    #x29 = delta_y_r

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
        
        self.f_FLx = Float64MultiArray.data[8]
        self.f_FLy = Float64MultiArray.data[9]
        self.f_FLz = Float64MultiArray.data[10]
        
        self.f_FRx = Float64MultiArray.data[11]
        self.f_FRy = Float64MultiArray.data[12]
        self.f_FRz = Float64MultiArray.data[13]
        
        self.f_RLx = Float64MultiArray.data[14]
        self.f_RLy = Float64MultiArray.data[15]
        self.f_RLz = Float64MultiArray.data[16]
        
        self.f_RRx = Float64MultiArray.data[17]
        self.f_RRy = Float64MultiArray.data[18]
        self.f_RRz = Float64MultiArray.data[19]
         
        self.ax = Float64MultiArray.data[20]
        self.ay = Float64MultiArray.data[21]


#i use this file as the node of Simulator


# run simulations *****************
if __name__ == '__main__':



    rospy.init_node('sub_drive',anonymous=True)
    
    print('subscribing???')
    x=[]
    y=[]
    vx=[]
    vy=[]
    yaw=[]
    yaw_rate=[]
    wf=[]
    wr=[]
    f_FLx =[]
    f_FLy =[]
    f_FLz =[]
    f_FRx =[]
    f_FRy =[]
    f_FRz =[]
    f_RLx =[]
    f_RLy =[]
    f_RLz =[]
    f_RRx =[]
    f_RRy =[]
    f_RRz =[]
    
    ax =[]
    ay =[]
    
    slip_xf = []
    slip_xr = []
    
    sim_freq = 200.0
    rate =rospy.Rate(sim_freq) #    200 times per second
    j=0

    pub =rospy.Publisher('/RC01s/carsimCmd', Float64MultiArray, queue_size =10 ) #topic name is state_topic
    
    
    
    v_flag = True
    vth= 5.15
    tStart = time.time()
    r = 0.054 # wheel radius
    K = 100.0

    kin_data = subscribe_data()
    Status =[]
    Omega =[]
    Steer =[]

    #
    while not rospy.is_shutdown():

        # test cmd
        if v_flag:
            status = 7.
            omega =1.
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
            #if time.time()-tStart - steer_time < 0.26:
            if len(x) - steer_len < 0.27*200.: # DT =1/200
                #  steer, torque command
                status = 8
                omega= 84.25
                steer = -1.  # max steer
                print('steer')

            else:
                status =8
                a = len(x) /200.  - steer_len/200. -0.26
                ome = vth/r-60.0 - K * ( len(x) /200.  - steer_len/200. -0.26 )
                #print('vth/r:', vth/r)# 110
                #print('a:',a)
                #print('( len(x) /200  - steer_len/200 -0.26 ):',  len(x) /200. - steer_len/200. -0.26  )
                #print('K * ( len(x) /200  - steer_len/200 -0.26 ):', K * ( len(x) /200.  - steer_len/200. -0.26 ))
                #print('len(x):',len(x))
                print('steer_len:',steer_len)
                #print('ome:',ome)
                #omega = max( ome, 0 )
                omega =0.
        
                    
                steer =-1. 
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
        
        slipxf = (kin_data.vx - kin_data.wf * 0.054) / (kin_data.wf * 0.054)
        slipxr= (kin_data.vx - kin_data.wr * 0.054) / (kin_data.wr * 0.054)
        
        x.append(kin_data.x)
        y.append(kin_data.y)
        vx.append(kin_data.vx)
        vy.append(kin_data.vy)
        yaw.append(kin_data.yaw)
        yaw_rate.append(kin_data.r)
        wf.append(kin_data.wf)
        wr.append(kin_data.wr)
        #tire force
        f_FLx.append(kin_data.f_FLx)
        f_FLy.append(kin_data.f_FLy)
        f_FLz.append(kin_data.f_FLz)
        
        f_FRx.append(kin_data.f_FRx)
        f_FRy.append(kin_data.f_FRy)
        f_FRz.append(kin_data.f_FRz)
        
        f_RLx.append(kin_data.f_RLx)
        f_RLy.append(kin_data.f_RLy)
        f_RLz.append(kin_data.f_RLz)
        
        f_RRx.append(kin_data.f_RRx)
        f_RRy.append(kin_data.f_RRy)
        f_RRz.append(kin_data.f_RRz)
        
        ax.append(kin_data.ax)
        ay.append(kin_data.ay)
        
        slip_xf.append(slipxf)
        slip_xr.append(slipxr)
        
        if len(x) >= 800: # 4 second simulation. Then break
            break
            
        
        
        rate.sleep()
        # END OF WHILE LOOP!!!
    
    # write data in .csv
    
    data = [x,
            y,
            vx,
            vy,
            yaw,
            yaw_rate,
            wf,
            wr]    
                
    # write the data in csv file in such form
    csv_file =open('/media/crl/DATA/anaconda3/f1ten_4w1/data/kin_data5194w.csv', 'w')

    csv_writer = csv.writer(csv_file,delimiter =",")
    for row in data:
        csv_writer.writerow(row)

    csv_file.close()
    # END of writing data!!!
    
    
    
        
    print("length of x:",len(x))
    
    timer =  numpy.arange(0, 4, 1./sim_freq)
    print("length of t", len(timer))
    beta = numpy.arctan2(vy,vx)
    
    plt.close("all")
    
    plt.figure(1)
    title('slip angle VS time')
    plt.plot(timer,beta)
    #plt.show()
    
    plt.figure(2)
    title('vx&vy VS time')
    plt.plot(timer,vx,'r')
    plt.plot(timer,vy,'g')
    plt.grid()
    legend(['vx','vy'])
    #plt.show()
    
    plt.figure(3)
    title('yaw angle vs time')
    plt.plot(timer,yaw)
    #plt.show()
    
    plt.figure(4)
    title('yaw rate vs time')
    plt.plot(timer,yaw_rate)
    #plt.show()
    
    plt.figure(5)    
    title('position STD; equal')
    plt.plot(x,y)
    plt.gca().set_aspect('equal', adjustable='box')
    #plt.show()
    
    plt.figure(6)
    title('wf & wr vs time')
    plt.plot(timer,wf,'b')
    plt.plot(timer,wr,'y')
    plt.grid()
    legend(['wf','wr']) 
    #plt.show()

       
    
    plt.figure(7)
    title('status & omega&  vs time')
    plt.plot(timer,Status,'b')
    plt.plot(timer,Omega,'y')
    plt.plot(timer,Steer,'r')
    legend(['Status','Omega','Steer'])   
    #plt.show() 
    
    
    
    plt.figure(8)
    title('4 w normal load')
    plt.plot(timer,f_FLz,'r')
    plt.plot(timer,f_FRz,'g')
    plt.plot(timer,f_RLz,'b')
    plt.plot(timer,f_RRz,'m')
    legend(['FL','FR','RL','RR'])
    
    plt.figure(9)
    title('4w X tire force')
    plt.plot(timer,f_FLx,'r')
    plt.plot(timer,f_FRx,'g')
    plt.plot(timer,f_RLx,'b')
    plt.plot(timer,f_RRx,'m')
    legend(['FL','FR','RL','RR']) 
    
    plt.figure(10)
    title('4w Y tire force')
    plt.plot(timer,f_FLy,'r')
    plt.plot(timer,f_FRy,'g')
    plt.plot(timer,f_RLy,'b')
    plt.plot(timer,f_RRy,'m')
    legend(['FL','FR','RL','RR']) 
    #plt.show()
    
    plt.figure(11)
    title('ax&ay VS time')
    plt.plot(timer,ax,'r')
    plt.plot(timer,ay,'g')
    plt.grid()
    legend(['ax','ay'])
    #plt.show()
    
    
    plt.figure(12)    
    title('Slip x Vs time')
    plt.plot(timer,slip_xf)
    plt.plot(timer,slip_xr)
    legend(['slip_xf','slip_xr'])
    plt.show()
    
     
    # reset to original point
    cmd_reset  = Float64MultiArray()
    
    reset_status = 4.0 #reset
    
    cmd_reset.data.append(reset_status) #msg.data[0]   
    cmd_reset.data.append(omega) #msg.data[1]
    cmd_reset.data.append(steer) #msg.data[2]
    
    print(cmd_reset.data[0])

    #pub.publish (cmd_reset)
         
    
        #
    
    

        
    # cornering_left(0.15, 0)
    #oversteer_understeer_MB()
    
    # braking()
    # accelerating()
        
    

