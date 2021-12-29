#!/usr/bin/env python 
# coding=utf-8
#Functions for testing different vehicle models (see examples in chap. 11 of documentation)

from __future__ import print_function

  
import math
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
import time,datetime
import csv
import pandas as pd
curr_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")  # 获取当前时间
output_file = f"./kin_data4w_180_{curr_time}.csv"

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
                                                         
        
        self.world_vx = self.vx * math.cos(-self.yaw) + self.vy* math.sin(-self.yaw)
        self.world_vy = self.vy * math.cos(-self.yaw) - self.vx *math.sin(-self.yaw)
        
        # 每个轮胎收到的力
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

        # 汽车坐标系下的加速度 
        self.ax = Float64MultiArray.data[20]
        self.ay = Float64MultiArray.data[21]

    

def cmd_reset(pub):
    cmd  = Float64MultiArray()
    reset_status = 4.0 #reset
    cmd.data.append(reset_status) #msg.data[0]   
    cmd.data.append(0) #msg.data[1]，reset时这个数值不重要
    cmd.data.append(0) #msg.data[2]，reset时这个数值不重要
    pub.publish (cmd)



# run simulations *****************
if __name__ == '__main__':

    # only fo rthe dome result
    target_x = 4.58
    target_y = 2.9

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
    
    World_vx =[]
    World_vy =[]
    
    Position_theta = []
    Velocity_theta = []
    Diff_theta = []
    sim_freq = 90.0
    rate =rospy.Rate(sim_freq) #    200 times per second
    j=0

    pub =rospy.Publisher('/RC01s/carsimCmd', Float64MultiArray, queue_size =10 ) #topic name is state_topic
    
    
    
    v_flag = True
    vth= 5.0
    tStart = time.time()
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
            # print("ACCELERATING!!! GO!")
            # print('Vx:',kin_data.vx)
            
        
        if v_flag  and abs(kin_data.vx) >= vth:
            # steer, no imput   
            steer_time = time.time() - tStart         
            steer_len = len(x) # current length of x
            # print('steer_len:',steer_len)
            # print('begin to steer')
            v_flag = False
             


        if v_flag == False:
            #if time.time()-tStart - steer_time < 0.26:
            if len(x) - steer_len < 0.338*sim_freq: # DT =1/200
                #  steer, torque command
                status = 7
                omega= 0.83
                steer = -1.  # max steer
                # print('steer')

            else:
                status =7#7 #8
                #a = len(x) /200.  - steer_len/200. -0.26
                #ome = vth/r-60.0 - K * ( len(x) /200.  - steer_len/200. -0.26 )
                #print('vth/r:', vth/r)# 110
                #print('a:',a)
                #print('( len(x) /200  - steer_len/200 -0.26 ):',  len(x) /200. - steer_len/200. -0.26  )
                #print('K * ( len(x) /200  - steer_len/200 -0.26 ):', K * ( len(x) /200.  - steer_len/200. -0.26 ))
                # print('len(x):',len(x))
                # print('steer_len:',steer_len)
                #print('ome:',ome)
                #omega = max( ome, 0 )
                omega =0.83#0.83#0.
        
                    
                steer =-1.  # FAN DA!  Counter Steer!
                # print('BRAKE!')
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
        
        
        
       
        
        
        position_theta = (target_y-kin_data.y)/(target_x-kin_data.x)
        velocity_theta = kin_data.world_vy / kin_data.world_vx
        diff_theta = position_theta - velocity_theta
        
        Position_theta.append(position_theta)
        Velocity_theta.append(velocity_theta)
        Diff_theta.append(diff_theta)
        
        World_vx.append(kin_data.world_vx)
        World_vy.append(kin_data.world_vy)
        
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
        
        if len(x) >= sim_freq*4.5: # 5 second simulation. Then break
            print("Total yaw angle:", yaw[-1])
            break
            
        
        
        rate.sleep()
        # END OF WHILE LOOP!!!
    
    # write data in .csv
    
    # get total Fx
    f_FLx1 = np.array(f_FLx)
    f_FLy1 = np.array(f_FLy)  
    f_FRx1 = np.array(f_FRx)
    f_FRy1 = np.array(f_FRy)
    
    f_RLx1 = np.array(f_RLx)
    f_RLy1 = np.array(f_RLy)  
    f_RRx1 = np.array(f_RRx)
    f_RRy1 = np.array(f_RRy)

    f_FL =np.power( np.power(f_FLx1,2) + np.power(f_FLy1,2) , 0.5)
    f_FR =np.power( np.power(f_FRx1,2) + np.power(f_FLy1,2) , 0.5)
    f_RL =np.power( np.power(f_RLx1,2) + np.power(f_RLy1,2) , 0.5)
    f_RR =np.power( np.power(f_RRx1,2) + np.power(f_RRy1,2) , 0.5)
    timer = np.arange(0, 4.5, 1./sim_freq)
    data = [x,
            y,
            vx,
            vy,
            yaw,
            yaw_rate,
            wf,
            wr,
            f_FL,
            f_FR,
            f_RL,
            f_RR,
            Status,
            Omega,
            Steer,
            timer]    
    data = list(map(list,zip(*data)))
    # write the data in csv file in such form
    output_df = pd.DataFrame(data,columns=['x','y','vx','vy','yaw','yaw_rate','wf','wr','f_FL','f_FR','f_RL','f_RR','status','omega','steer','timer'])
    output_df.to_csv(output_file,index=None)
   
    # END of writing data!!!

    # 开始计算曲率

    x_t = np.array(x)
    y_t = np.array(y)
    
    #vel = np.array([ [x_t[i], y_t[i]] for i in range(x_t.size)])
       
    #speed = np.sqrt(x_t * x_t + y_t * y_t)
    
    #tangent = np.array([1/speed] * 2).transpose() * vel
    
    #ss_t = np.gradient(speed)
    #xx_t = np.gradient(x_t)
    #yy_t = np.gradient(y_t)

    #curvature_val = np.abs(xx_t * y_t - x_t * yy_t) / (x_t * x_t + y_t * y_t)**1.5
    
    # METHOD 2:
    dx_dt = np.gradient(x_t)
    dy_dt = np.gradient(y_t)
    velocity = np.array([ [dx_dt[i], dy_dt[i]] for i in range(dx_dt.size)])
    ds_dt = np.sqrt(dx_dt * dx_dt + dy_dt * dy_dt)
    tangent = np.array([1/ds_dt] * 2).transpose() * velocity
    
    tangent_x = tangent[:, 0]
    tangent_y = tangent[:, 1]

    deriv_tangent_x = np.gradient(tangent_x)
    deriv_tangent_y = np.gradient(tangent_y)

    dT_dt = np.array([ [deriv_tangent_x[i], deriv_tangent_y[i]] for i in range(deriv_tangent_x.size)])

    length_dT_dt = np.sqrt(deriv_tangent_x * deriv_tangent_x + deriv_tangent_y * deriv_tangent_y)

    normal = np.array([1/length_dT_dt] * 2).transpose() * dT_dt
    
    d2s_dt2 = np.gradient(ds_dt)
    d2x_dt2 = np.gradient(dx_dt)
    d2y_dt2 = np.gradient(dy_dt)

    curvature = np.abs(d2x_dt2 * dy_dt - dx_dt * d2y_dt2) / (dx_dt * dx_dt + dy_dt * dy_dt)**1.5
    t_component = np.array([d2s_dt2] * 2).transpose()
    n_component = np.array([curvature * ds_dt * ds_dt] * 2).transpose()

    acceleration = t_component * tangent + n_component * normal
            
    # END of get curvature
    
    # Get total force  v^2 / r = F/m
    
    m = 4.2

    # World V
    V = np.power( np.power(World_vx,2) + np.power(World_vy,2) ,0.5)
    
    F =[]
    F = np.power(V,2) * curvature * m 
 
   
    print("length of x:",len(x))
    
    
    print("length of t", len(timer))
    
    beta = np.arctan2(vy,vx)
    
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
    title('World vx&vy VS time')
    plt.plot(timer,World_vx,'r')
    plt.plot(timer,World_vy,'g')
    plt.grid()
    legend(['vx','vy'])
    #plt.show()
    plt.figure(4)
    title('Position theta& wporldvelocity theta VS time')
    plt.plot(timer,Position_theta,'r')
    plt.plot(timer,Velocity_theta,'g')
    plt.plot(timer,Diff_theta,'b')
    legend(['Pos_theta','CarVelo_theta', 'Diff'])
    #plt.show()
    plt.figure(5)
    title('yaw angle vs time')
    plt.plot(timer,yaw)
    #plt.show()
    plt.figure(6)
    title('yaw rate vs time')
    plt.plot(timer,yaw_rate)
    #plt.show()
    
    plt.figure(7)    
    title('position STD; equal')
    plt.plot(x,y)
    plt.gca().set_aspect('equal', adjustable='box')
    #plt.show()
    
    plt.figure(8)
    title('wf & wr vs time')
    plt.plot(timer,wf,'b')
    plt.plot(timer,wr,'y')
    plt.grid()
    legend(['wf','wr']) 
    #plt.show()

       
    
    plt.figure(9)
    title('status & omega&  vs time')
    plt.plot(timer,Status,'b')
    plt.plot(timer,Omega,'y')
    plt.plot(timer,Steer,'r')
    legend(['Status','Omega','Steer'])   
    #plt.show() 
    
    plt.figure(10)
    title('4w  tire force')
    plt.plot(timer,f_FL,'r')
    plt.plot(timer,f_FR,'g')
    plt.plot(timer,f_RL,'b')
    plt.plot(timer,f_RR,'m')
    legend(['FL','FR','RL','RR']) 
    #plt.show()

        
    plt.figure(11)
    plt.subplot(2,1,1)
    title('curvature VS time')
    plt.plot( timer, curvature)
    # plt.show()
    
    plt.subplot(2,1,2)
    title('F VS time')
    plt.plot(timer,F)
    plt.show()
    cmd_reset  = Float64MultiArray()
    
    reset_status = 4.0 #reset
    
    cmd_reset.data.append(reset_status) #msg.data[0]   
    cmd_reset.data.append(omega) #msg.data[1]
    cmd_reset.data.append(steer) #msg.data[2]
    
    print(cmd_reset.data[0])

    pub.publish (cmd_reset)
   
   
    
        #
    
    

        
    # cornering_left(0.15, 0)
    #oversteer_understeer_MB()
    
    # braking()
    # accelerating()
        
    

