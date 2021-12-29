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
        
        
        
if __name__ == '__main__':

    rospy.init_node('cmd_180',anonymous=True)
    
    print('cmd_180 initializing!')
    x=[]
    y=[]
    vx=[]
    vy=[]
    yaw=[]
    yaw_rate=[]
    wf=[]
    wr=[]
    
    sim_freq = 200.0
    rate =rospy.Rate(sim_freq) #    200 times per second
    j=0


    pub = rospy.Publisher('/drive', AckermannDriveStamped, queue_size=0)
    
    
    v_flag = True
    vth= 5.0
    tStart = time.time()
    r = 0.054 # wheel radius
    

    kin_data = subscribe_data()
    
    Acc =[]
    Steer =[]
    Jerk = [] # if jerk =1 -> Reset. If jerk =0 -> nothing
    #
    while not rospy.is_shutdown():     
    
    
        if v_flag:
            #status = 7.
            acc =1.0
            steer = 0.
            jerk =0
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
            if len(x) - steer_len < 0.308*200.: # DT =1/200
                #  steer, torque command
                #status = 7
                acc = 0.99
                steer = -1.  # max steer
                print('steer')

            else:
                #status =8
               
                print('len(x):',len(x))
                print('steer_len:',steer_len)

                acc = -1. # brake

                steer = -1. 
                jerk =0 
                print('BRAKE!')   
                
        
        Acc.append(acc)
        Steer.append(steer)
        Jerk.append(jerk)
                
        ack_msg = AckermannDriveStamped()
        #ack_msg.drive.speed = speed
        ack_msg.drive.acceleration = acc      
        ack_msg.drive.steering_angle = steer
        ack_msg.drive.jerk = jerk
        print('acc:',ack_msg.drive.acceleration)
        print('steer:',ack_msg.drive.steering_angle)
        pub.publish(ack_msg)
        
        x.append(kin_data.x)
        y.append(kin_data.y)
        vx.append(kin_data.vx)
        vy.append(kin_data.vy)
        yaw.append(kin_data.yaw)
        yaw_rate.append(kin_data.r)
        wf.append(kin_data.wf)
        wr.append(kin_data.wr)
        
        if len(x) >= 1000: # 5 second simulation. Then break
            print("Total yaw angle:", yaw[-1])
            break
            
        rate.sleep() 
        
        
        beta = numpy.arctan2(vy,vx)
        print('length of beta:',len(beta))
        data = [x,
                y,
                vx,
                vy,
                yaw,
                yaw_rate,
                wf,
                wr,
                beta,
                Acc,
                Steer,
                Jerk]     
                
        # write the data in csv file in such form
        csv_file =open('/media/crl/DATA/anaconda3/f1ten_4w1/data/cmd_180.csv', 'w')

        csv_writer = csv.writer(csv_file,delimiter =",")
        for row in data:
            csv_writer.writerow(row)

        csv_file.close()
        # END of writing data!!!
        
        
        
        print("length of x:",len(x))
    
    timer = numpy.arange(0, 5, 1./sim_freq)
    print("length of t", len(timer))
    
    
    title('slip angle VS time')
    plt.plot(timer[0:-1],beta)
    plt.show()
    
    title('vx&vy VS time')
    plt.plot(timer,vx,'r')
    plt.plot(timer,vy,'g')
    plt.grid()
    legend(['vx','vy'])
    plt.show()
    
    title('yaw angle vs time')
    plt.plot(timer,yaw)
    plt.show()
    
    title('yaw rate vs time')
    plt.plot(timer,yaw_rate)
    plt.show()
    
        
    title('position STD; equal')
    plt.plot(x,y)
    plt.gca().set_aspect('equal', adjustable='box')
    plt.show()
    
    title('wf & wr vs time')
    plt.plot(timer,wf,'b')
    plt.plot(timer,wr,'y')
    plt.grid()
    legend(['wf','wr']) 
    plt.show()

    title('acc&  vs time')
    plt.plot(timer,Acc,'y')
    plt.plot(timer,Steer,'r')
    legend(['Acc','Steer'])   
    plt.show() 

    #
    ack_msg_reset = AckermannDriveStamped()
    #ack_msg.drive.speed = speed
    ack_msg_reset.drive.acceleration = acc      
    ack_msg_reset.drive.steering_angle = steer
    ack_msg_reset.drive.jerk = 1 # RESET!
    pub.publish (ack_msg_reset)
    #
   
        
