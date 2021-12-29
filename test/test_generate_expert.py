from stable_baselines import DQN
from stable_baselines.gail import generate_expert_traj
import math
import matplotlib.pyplot as plt
from my_env.gym_env_1 import CarEnv
env = CarEnv()
obs = env.reset()
steps=0
actions = []
def custom_exp(obs):
      print(obs)
      target_x,target_y,x,y,vx,vy,yaw,yaw_rate,slip_angle,brake_flag = obs
      if brake_flag==1:
            print("a1")
            action = 4
      else:
            
            dist_error =  math.sqrt( (target_x-x) **2 + (target_y-y) **2 )
            print("dist",dist_error)
            if dist_error > 5.8:
                  print("a1")
                  action = 0
            else:
                  world_vx = vx * math.cos(-yaw) + vy* math.sin(-yaw)
                  world_vy = vy * math.cos(-yaw) - vx *math.sin(-yaw)
                  postion_theta = (target_y-y)/(target_x-x)
                  velocity_theta = world_vy/world_vx
                  if abs(postion_theta-velocity_theta)>0.03:
                        print("a3")
                        action = 2
                  else:
                        print("a4")
                        action = 4

      return action
while True:
    steps+=1
    action = custom_exp(obs)
    obs, rewards, dones, info = env.step(action)
    if dones:
          break
print(f"步数：{steps}")