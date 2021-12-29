
from my_env.car_control import Drive
from my_env.sensor import Sensor

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
        self.target_x = target_x
        self.target_y = target_y
        self.n_actions = 5
        self.action_space = spaces.Discrete(self.n_actions)
        # self.action_space = spaces.MultiDiscrete([2,2, 2]) # [0~1] [-1~1] {0,1} 
        # Example for using image as input:
        # target_x target_y x,y,Vx Vy ,Yaw_angle Yaw_rate Slip_angle,brake_flag 7
        self.n_states = 10
        high= np.array([1000.0,1000.0,1000.0,1000.0,1000.0,1000.0,3.14159, 1000.0, 3.14159,2.00])
        self.observation_space = spaces.Box(low=-high, high=high, shape=(self.n_states,), dtype=np.float32)
        self.drive = Drive() 
        self.sensor = Sensor() 
        self.curr_step = 0    
        self.brake_flag = 0
        self.target_x, self.target_y = target_x, target_y                                 
    def step(self, action):
        # when I call the step use action. after I finished building gym env. Shows below:
        # action, _ = model.predict(obs)
        #obs, reward, done, _ = env.step(action)
        # call drive here. 
        if action==0:
            throttle = 1
            steer = 0
            brake = 0
            self.drive.throttle(throttle_value=throttle)
        elif action==1:
            throttle = 1
            steer = 1
            brake = 0
            self.drive.steer_left(steer_value=steer)
        elif action==2:
            throttle = 1
            steer = -1
            brake = 0
            self.drive.steer_right(steer_value=steer)
        elif action==3:
            throttle = 0
            steer = 1
            brake = 1
            self.drive.drift_left(steer_value=1)
        else:
            throttle = 0
            steer = -1
            brake = 1
            self.drive.drift_right(steer_value=-1)
        time.sleep(0.035)
        self.throttles.append(throttle)
        self.steers.append(steer)
        self.brakes.append(brake)
        # self.drive.action([throttle,steer,brake])    #   action will be transferd into cmd and send to dynamics model                        
        # print("X :{}, Y:{}".format(self.sensor.x, self.sensor.y) )
        if self.brake_flag == 1:
            print("c1")
            reward = throttle * (-200.0) + steer*(-0.2) + brake * 0.8 # steer 正：向右
        else:
            if self.sensor.get_distance_error() > 5.8: # 直线加速
                print("c2")
                reward = throttle*1.0-abs(steer)*200.0-brake*200.0
            else:
                
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
                if abs(postion_theta-velocity_theta)>0.03: # 转弯
                    print("c3")
                    if steer == 0:
                        reward = throttle* 0.2- 200.0 - brake*200.0
                    else:
                        reward = throttle * 0.2 + steer * (-0.8) - brake*200.0
                else:
                    print("c4")
                    self.brake_flag = 1
                    reward = throttle * (-200.0) + steer*(-0.2) + brake * 0.8 # steer 正：向右
        # if self.sensor.get_distance_error() > 5.0: # acc
        #     reward = self.sensor.vx * 0.28 - abs(self.sensor.vy) * 0.3 - abs(action[1]*1.0-100.0)*3 + action[0]*0.3
        
        # else:
        #     if self.sensor.get_distance_error() > 1.4 : # half way of rotation
        #         reward = -self.sensor.get_distance_error() *0.5 - self.sensor.get_yaw_error() * 1 +  self.sensor.vy * 0.3 + self.sensor.beta * 0.8
                
        #     else:
        #         reward =  -self.sensor.get_distance_error() * 0.55 - self.sensor.get_yaw_error() * 1 - math.sqrt( ( self.sensor.vx) **2 + (self.sensor.vy) **2 ) * 1 - (action[1]*1.0-0.0) * 2 # give reward for right 
        obs = [self.target_x,self.target_y]+self.sensor.obs + [self.brake_flag] # a Float64MultiArray.data list
        done =   self._check_done()  
        self.curr_step += 1 
        if self.curr_step%1==0:
            print(f"curr step:{self.curr_step},action:{action},reward:{reward}")
        if self.curr_step>=150:
            self.curr_step = 0
            done = True            
          # Execute one time step within the environment
        # if done:
        #     self.reset()
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
        if math.sqrt((x-self.target_x)**2+(y-self.target_y)**2)<0.8 and v <0.03:
            done = True
            print("reach the tartget!")
            time.sleep(1)
        return done        
        
    
    def reset(self):
        self.curr_step = 0
        self.brake_flag = 0
        # Reset the state of the environment to an initial state
        self.drive.reset()
        self.throttles,self.steers,self.brakes = [],[],[]
        time.sleep(1)
        obs = [self.target_x,self.target_y]+self.sensor.obs+[self.brake_flag]
        
        return obs  # reward, done, info can't be included
    
    def render(self, mode='human'):
        # Render the environment to the screen
        print('rendering...')
       
