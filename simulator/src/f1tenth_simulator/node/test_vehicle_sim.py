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

from PYTHON.vehiclemodels.parameters_vehicle2 import parameters_vehicle2
from PYTHON.vehiclemodels.parameters_vehicle_rally import parameters_vehicle_rally
#from PYTHON.vehiclemodels.init_ks import init_ks
#from PYTHON.vehiclemodels.init_st import init_st
from PYTHON.vehiclemodels.init_mb import init_mb
#from PYTHON.vehiclemodels.init_std import init_std
#from PYTHON.vehiclemodels.vehicle_dynamics_ks import vehicle_dynamics_ks
#from PYTHON.vehiclemodels.vehicle_dynamics_st import vehicle_dynamics_st
from PYTHON.vehiclemodels.vehicle_dynamics_mb import vehicle_dynamics_mb
#from PYTHON.vehiclemodels.vehicle_dynamics_std import vehicle_dynamics_std

# length of state for mb is 29!!!!!!!!!!!!!!


#i use this file as the node of Simulator

# load parameters------------------------
   
    
 
class subscribe_drive():

    def __init__(self):
        
        self.desired_steer_ang = 0
        self.desired_acc = 0
        
        # listenser to subscribe msg from topic "/drive"
        
        
        self.sub = rospy.Subscriber("/drive",AckermannDriveStamped, self.drive_callback) 
        
        rospy.wait_for_message("/drive", AckermannDriveStamped)
        # rospy.Subscriber(topic name, data type, name of callback function )
        
    # subscriber callback function----------------------------------
    def drive_callback(self, AckermannDriveStamped):
        
        #print('msg received!')
        #rospy.loginfo('desired_steer_ang in loop:', AckermannDriveStamped.drive.steering_angle)
        #rospy.loginfo('desired_acc in loop:', AckermannDriveStamped.drive.acceleration)
        
        self.desired_steer_ang = AckermannDriveStamped.drive.steering_angle
        self.desired_acc = AckermannDriveStamped.drive.acceleration
        
        #print('desired_steer_ang:in loop', self.desired_steer_ang)
        #print('desired_acc:in loop', self.desired_acc) # 0.5
        
        #return self.desired_acc, self.desired_steer_ang


#-----------------------------------MB---------------------
def func_MB(x, t, u, p):
    f = vehicle_dynamics_mb(x, u, p)
    return f

def oversteer_understeer_MB():
    t = numpy.arange(0, tFinal, 0.01)
    v_delta = 0.15

    # coasting
    u = [v_delta, 0]
    x_coast = odeint(func_MB, x0_MB, t, args=(u, p))

    # braking
    u = [v_delta, -0.7*g]
    x_brake = odeint(func_MB, x0_MB, t, args=(u, p))

    # accelerating
    u = [v_delta, 0.63 * g]
    x_acc = odeint(func_MB, x0_MB, t, args=(u, p))

    # position
    title('position comparison MB')
    plt.plot([tmp[0] for tmp in x_coast], [tmp[1] for tmp in x_coast])
    plt.plot([tmp[0] for tmp in x_brake], [tmp[1] for tmp in x_brake])
    plt.plot([tmp[0] for tmp in x_acc], [tmp[1] for tmp in x_acc])
    legend(['coasting', 'braking', 'accelerating'])
    plt.show()
    # slip angles
    title('slip angle comparison MB')
    plt.plot(t, [tmp[10] / tmp[3] for tmp in x_coast])
    plt.plot(t, [tmp[10] / tmp[3] for tmp in x_brake])
    plt.plot(t, [tmp[10] / tmp[3] for tmp in x_acc])
    legend(['coasting', 'braking', 'accelerating'])
    plt.show()
    # orientation
    title('orientation comparison MB')
    plt.plot(t, [tmp[4] for tmp in x_coast])
    plt.plot(t, [tmp[4] for tmp in x_brake])
    plt.plot(t, [tmp[4] for tmp in x_acc])
    legend(['coasting', 'braking', 'accelerating'])
    plt.show()
    # pitch
    title('pitch comparison MB')
    plt.plot(t, [tmp[8] for tmp in x_coast])
    plt.plot(t, [tmp[8] for tmp in x_brake])
    plt.plot(t, [tmp[8] for tmp in x_acc])
    legend(['coasting', 'braking', 'accelerating'])
    plt.show()


# run simulations *****************
if __name__ == '__main__':


    #----load params----------------------
    p = parameters_vehicle2()
    g = 9.81  # [m/s^2]
    # set options --------------------------------------------------------------
    delta0 = 0
    vel0 = 0 # Original test value was 0; Change it back to 0 by Xiaoyin. 
    Psi0 = 0
    dotPsi0 = 0
    beta0 = 0
    sy0 = 0
    max_steering_vel= 3.2 
    initialState = [0, sy0, delta0, vel0, Psi0, dotPsi0, beta0]  # initial state for simulation

    x0_MB = init_mb(initialState, p)  # initial state for multi-body model

    #update_pose_rate = rospy.get_param("update_pose_rate")

    tStart = 0  # start time
    #tFinal = 2* update_pose_rate  # start time
    tFinal = 0.001  # start time
    #n.getParam("update_pose_rate", update_pose_rate); # 0.001
    # End load params------------------------------------ 
        

    # --------------------------------------------------------------------------
    # subscribe desired acc & desired steer_ang from /drive
    desired_steer_ang = 0.0
    desired_acc =0.0
    rospy.init_node('sub_drive',anonymous=True)
    drive_msg = subscribe_drive()
    #time.sleep(0.1) # solved!!!-------------------------------
    
    sim_freq = 100.0
    rate =rospy.Rate(sim_freq) #    1000 times per second
    j=0
    
    pub =rospy.Publisher('/f1tenth_simulator/state_topic', Float64MultiArray, queue_size =10 ) #topic name is state_topic
    while not rospy.is_shutdown():

        desired_steer_ang = drive_msg.desired_steer_ang
        desired_acc = drive_msg.desired_acc
        
        #print('desired_steer_ang:??', drive_msg.desired_steer_ang)
        #print('desired_acc:??', desired_acc)
        #---------------------------------------------------------------------------
       
        # current steer angle, x3. note: x3 = x[2]
        steer_angle = x0_MB[2] 
        #  Get the steer vel.  refer simulator.cpp, line 501 compute_steer_vel .
        dif = desired_steer_ang - steer_angle
        if abs(dif)>0.0001:
            steer_vel = dif/ abs(dif) * max_steering_vel #  max_steer_vel is a prama to import 
        else:
            steer_vel = 0 
        # end of getting steer_vel
           
        v_delta = steer_vel
        a_long =  desired_acc
        u = [v_delta, a_long]# now i have u
        #----------------------------------------------------------------------------------
   
        #t = numpy.arange(tStart, tFinal, 0.01) 
        t = [tStart, tFinal]
        tStart = tFinal
        tFinal += 1. / sim_freq
        
        print('tstart:',tStart)
        print('tfinal:',tFinal)
        #print('/n')
        
        # calculated new state of MB.
        x_MB = odeint(func_MB, x0_MB, t, args=(u, p),h0=0.0001, hmin=1e-185)
        #NOTE: x_MB is 2d aray. x_MB[0] == x0_MB; x_MB[1] is new state
        
        print('x0MB:',x0_MB)
        #print('x_mb:',x_MB)
        # update original state with new state 
        x0_MB = x_MB[1] 
        
        #----------------publish the x_MB stat to new topic: /state
        
        #--plot
        X=[]
        X.append(x_MB[1])
        j+=1 
        #print('j==========:',j)
        if j%2000 ==0:
            title('position  MB')
            plt.plot([tmp[0] for tmp in X], [tmp[1] for tmp in X])
            #plt.autoscale()
            plt.show()
 
        #-plot end
        
        
        # change data type to "Float64MultiArray"!!!!!!!
        state_msg  = Float64MultiArray()
        
        #state_msg.data = [None] * len(x_MB)
        
        for i in range (len(x_MB[-1])): # last element of x_MB
            state_msg.data.append(x_MB [-1][i])
            #print(' ')  
  
        pub.publish (state_msg)
        #print('msg published.....')
        rate.sleep()
    

    # cornering_left(0.15, 0)
    #oversteer_understeer_MB()
    
    # braking()
    # accelerating()
        
    

