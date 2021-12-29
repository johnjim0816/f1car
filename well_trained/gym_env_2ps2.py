from mycar_control import Drive
from mysensor import Sensor

import gym
from gym import spaces
import numpy as np


import rospy

import math
import time
class CarEnv(gym.Env):
    """Custom Environment that follows gym interface"""
    #metadata = {'render.modes': ['human']}

    def __init__(self,target_x=4.6,target_y=3): # traget spot 
        super(CarEnv, self).__init__()
        # Define action and observation space
        # They must be gym.spaces objects
        # Example when using discrete actions:
        rospy.init_node('gym_driver')
        print('initialize node')

        #Tuple( space = ( Box(low =-1.0, high=1.0,shape(3,),dtype=np.float32), Discrete(n=3) )  )

        #throttle_spaces =  spaces.Box( low=0., high=1., shape=(1,), dtype=np.float32 )  # [0~1]
        #steer_spaces =  spaces.Box( low=-1., high=1., shape=(1,), dtype=np.float32 ) #[-1~1]
        #brake_spaces =  spaces.Discrete(2)                # set with 2 elements {0,1} 
        #self.action_space = spaces.Dict( { 
        #                                "throttle": throttle_spaces,
        #                                "steer":    steer_spaces,
        #                                "brake":    brake_spaces
        #                                })
        #print("self.action_space.sample():", self.action_space.sample())
        #self.action_space = spaces.Tuple( [throttle_spaces,steer_spaces,brake_spaces] )    
        
        # ALL Discrete action space 
        self.action_space = spaces.Discrete(7)
        # self.action_space = spaces.MultiDiscrete([2,2, 2]) # [0~1] [-1~1] {0,1} 
        # Example for using image as input:
        #  X Y Vx Vy Yaw_angle Yaw_rate Slip_angle  7
        high= np.array([1.*1e300, 1.*1e300, 1.*1e300, 1.*1e300, 3.14159, 1.*1e400, 3.14159,100.0,100.0])
        self.observation_space = spaces.Box(low=-high, high=high, shape=(9,), dtype=np.float32)
        self.drive = Drive() 
        self.sensor = Sensor() 
        self.curr_step = 0    
        self.target_x, self.target_y = target_x, target_y     
        self.brake_flag = False
        self.keep_brake_flag = False          
                     
    def step(self, policy_action):
        self.curr_step += 1
        ###
        # keep brake mechanism
        #if self.keep_brake_flag:
        #    action = 6 # right brake
        #else:
        #    action = policy_action
            
        #    if action == 6 and self.brake_flag:
        #        self.keep_brake_flag = True
        # If this one can't work, just change it as
        
        if self.keep_brake_flag:
            action = 6 # right brake
        else:
            action = policy_action
            
            if action == 6 and self.sensor.get_distance_error() < 4.0:
                self.keep_brake_flag = True        
        # Keep acc mechanism      
        if self.sensor.get_distance_error() > 6.0:
            action = 0
        else:
            action = policy_action
     
                
        if action==0: # go straight
            throttle = 1.
            steer = 0.
            brake = 0
            self.drive.throttle(throttle_value=throttle)
            time.sleep(0.035)
        elif action==1: #  left steer
            throttle = 1.
            steer = 1.
            brake = 0
            self.drive.steer_left(steer_value=steer)
            time.sleep(0.035)
        elif action==2: #  half left steer
            throttle = 1.
            steer = 0.5
            brake = 0
            self.drive.steer_left(steer_value=steer)
            time.sleep(0.035)
        elif action==3:  #  right steer
            throttle = 1.
            steer = -1.
            brake = 0
            self.drive.steer_right(steer_value=steer)
            time.sleep(0.035)
        elif action == 4 : # half right steer
            throttle = 1. #
            steer = -0.5
            brake = 1
            self.drive.steer_right(steer_value=steer)
            time.sleep(0.035)
        elif action == 5 : # left brake
            throttle = 0. #
            steer = 1.0
            brake = 1    
            self.drive.drift_left(steer_value=steer)
            time.sleep(0.035)       
        elif action == 6 : # right brake
            throttle = 0. #
            steer = -1.0
            brake = 1
            self.drive.drift_right(steer_value=steer)
            time.sleep(0.035)
        
        
        self.throttles.append(throttle)
        self.steers.append(steer)
        self.brakes.append(brake)
        
        if self.brake_flag == True:
            reward = throttle * (-200.0)  + brake * 5.0- self.sensor.get_distance_error() * 1.0- self.sensor.get_yaw_error() * 3.0 - math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 ) * 1.0# pnealty for T, reward for right steer, breward for brake
            # I enlarger the barke ratio, error ratio, all to size greater than 1
        else:
            if self.sensor.get_distance_error() > 5.8: # Go straight, ACC!!!
             
                if self.sensor.y >4.0: #With go-left penalty
                    reward = throttle*1.0-abs(steer)*200.0-brake*200.0 - (self.sensor.y-4.0) *500.0 + self.sensor.vx * 19.0 - abs(self.sensor.yaw) * 30.0 - self.sensor.get_distance_error()*50.0 # give penalty for go left; reward for vx, penalty for abs(yaw _angle).
                else: # No go-left penalty
                    reward = throttle*1.0-abs(steer)*200.0-brake*200.0  + self.sensor.vx * 19.0 - abs(self.sensor.yaw) * 30.0 - self.sensor.get_distance_error()*80.0
            
            else:

                if self._get_yaw_diff()>0.03: # diff large, not zero, steer

                    if steer == 0:
                        reward = throttle* 0.2- 200.0 - brake*80.0 -self.sensor.get_distance_error() * 10.0 - self.sensor.get_yaw_error() * 80.0 +  self.sensor.vy * 0.8 + self.sensor.beta * 3.0 - (self.sensor.y-4.0) *80.0
                    else:
                        reward = throttle * 0.2   - brake*80.0 -self.sensor.get_distance_error() * 10.0 - self.sensor.get_yaw_error() * 80.0 +  self.sensor.vy * 0.8 + self.sensor.beta * 3.0  -(self.sensor.y-4.0) *80.0
                else: # yaw diff close to zero, begin to set brake flag to
                    self.brake_flag = True
                    reward = throttle * (-200.0)   + brake * 5.0  -self.sensor.get_distance_error() * 1.0- self.sensor.get_yaw_error() * 3.0 - math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 ) * 1.0 
        # Offside Penalty
        
        if self.sensor.x<-4.99 or self.sensor.x>6.99:
            reward -=80.0
        if self.sensor.y<0.01 :
            reward -=80.0
        if self.target_y>6.99:  # more penalty for left offside
            reward -= 100.0  

        obs = self.sensor.obs  # a Float64MultiArray.data list
        done =  self._check_done()  
         
        if self.curr_step%10==0:
            print(f"action:{action},reward:{int(reward)},brake_flag:{self.brake_flag},_yaw_diff():{self._get_yaw_diff()}, yaw_error:{self.sensor.get_yaw_error()}, distance:{self.sensor.get_distance_error()}, velo:{math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 )}")
            #print(f"velocity_theta:{velocity_theta},postion_theta:{postion_theta}")            
        if self.curr_step>=150:
            self.curr_step = 0
            done = True            

        info = {}  
        
        return obs, reward, done, info
    
    def _check_done(self):
        #  when we first get in this function, self.flag =True
        
        done =False
        x = self.sensor.x 
        y = self.sensor.y
        #print("X :{}, Y:{}".format(x, y) )
        # outside the box
        if x<-5 or x>7:
            done =True
        if y<0 or y>7:
            done =True
        v = math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 )
        if self.sensor.get_distance_error()<0.05 and v <0.03:
            done = True
            print("reach the tartget!")
            time.sleep(1)
        return done        
        
    def _get_yaw_diff(self):
        vy = self.sensor.vy
        vx = self.sensor.vx
        world_vx = vx * math.cos(-self.sensor.yaw) + vy* math.sin(-self.sensor.yaw)
        world_vy = vy * math.cos(-self.sensor.yaw) - vx *math.sin(-self.sensor.yaw)
        x = self.sensor.x
        y = self.sensor.y
        target_x = self.target_x
        target_y = self.target_y
        postion_theta = (target_y-y)/(target_x-x)
        velocity_theta = world_vy/world_vx
        return abs(postion_theta-velocity_theta)
        
    def reset(self):
        self.curr_step = 0
        self.brake_flag = False
        self.keep_brake_flag = False
        self.actions = []
        # Reset the state of the environment to an initial state
        self.drive.reset()
        self.throttles,self.steers,self.brakes = [],[],[]
        time.sleep(1)
        observation = self.sensor.obs
        
        return observation  # reward, done, info can't be included
    
    def render(self, mode='human'):
        # Render the environment to the screen
        print('rendering...')


