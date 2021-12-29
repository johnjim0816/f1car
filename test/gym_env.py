
from test.my_env.mycar_control import Drive
from test.my_env.mysensor import Sensor
import sys

import gym
from gym import spaces
import numpy as np


import rospy

import math
import time
class CarEnv(gym.Env):
    """Custom Environment that follows gym interface"""
    #metadata = {'render.modes': ['human']}

    def __init__(self,target_x=4.6,target_y=3):
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
        self.action_space = spaces.MultiDiscrete([2,2, 2]) # [0~1] [-1~1] {0,1} 
        # Example for using image as input:
        # Vx Vy X Y Yaw_angle Yaw_rate Slip_angle  7
        high= np.array([1.*1e300, 1.*1e300, 1.*1e300, 1.*1e300, 3.14159, 1.*1e400, 3.14159])
        self.observation_space = spaces.Box(low=-high, high=high, shape=(7,), dtype=np.float32)
        print("self.obs_space.sample():", self.observation_space.sample())
        self.drive = Drive() 
        self.sensor = Sensor() 
        self.current_step = 0    
        self.target_x, self.target_y = target_x, target_y                                 
    def step(self, action):
        # when I call the step use action. after I finished building gym env. Shows below:
        # action, _ = model.predict(obs)
        #obs, reward, done, _ = env.step(action)
        
        self.flag = True                 # for check done, check decelerating
        # call drive here. 
        throttle = action[0]
        steer = -1 if action[1]==0 else 1
        brake = action[2]
        self.drive.action([throttle,steer,brake])    #   action will be transferd into cmd and send to dynamics model                        
        # print("X :{}, Y:{}".format(self.sensor.x, self.sensor.y) )
        if self.sensor.get_distance_error() > 5.0:
            reward = throttle*1.0-abs(steer)*200.0-brake*200.0
        else:
            world_vy = self.sensor.vy
            world_vx = self.sensor.vx
            x = self.sensor.x
            y = self.sensor.y
            target_x = self.target_x
            target_y = self.target_y
            postion_theta = (target_y-y)/(target_x-x)
            velocity_theta = world_vy/world_vx
            if abs(postion_theta-velocity_theta)>0.02:
                reward = -1* steer + 1* throttle - brake*200.0
            else:
                reward = 1*brake + (-1)* steer - 200 * throttle
        # if self.sensor.get_distance_error() > 5.0: # acc
        #     reward = self.sensor.vx * 0.28 - abs(self.sensor.vy) * 0.3 - abs(action[1]*1.0-100.0)*3 + action[0]*0.3
        
        # else:
        #     if self.sensor.get_distance_error() > 1.4 : # half way of rotation
        #         reward = -self.sensor.get_distance_error() *0.5 - self.sensor.get_yaw_error() * 1 +  self.sensor.vy * 0.3 + self.sensor.beta * 0.8
                
        #     else:
        #         reward =  -self.sensor.get_distance_error() * 0.55 - self.sensor.get_yaw_error() * 1 - math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 ) * 1 - (action[1]*1.0-0.0) * 2 # give reward for right 
        obs = self.sensor.obs  # a Float64MultiArray.data list
        done =   self._check_done()  
        self.current_step += 1 
        if self.current_step>=400:
            self.current_step = 0
            done = True            
          # Execute one time step within the environment
        if done:
            self.reset()
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
        if self.flag and v > 3:   # V >
            
            self.flag = False
            
        if self.flag == False:
        
            if v < 0.005: # 0.5 cm/s
                done = True
                
        return done        
        
    
    def reset(self):
        self.current_step = 0
        self.flag = True
        # Reset the state of the environment to an initial state
        self.drive.reset()
        
        time.sleep(1)
        observation = self.sensor.obs
        
        return observation  # reward, done, info can't be included
    
    def render(self, mode='human'):
        # Render the environment to the screen
        print('rendering...')
       
