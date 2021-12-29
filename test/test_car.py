
import rospy
import time
import math
import matplotlib.pyplot as plt
from my_env.gym_env_1 import CarEnv
env = CarEnv()
env.reset()
steps=0
brake_flag = False
actions = []
while True:
    steps+=1
    if brake_flag==True:
        obs, rewards, dones, info = env.step(2)
        actions.append(4)
    else:
        if env.sensor.get_distance_error() > 5.8:
            obs, rewards, dones, info = env.step(0)
            actions.append(0)
        else:
            vy = env.sensor.vy
            vx = env.sensor.vx
            world_vx = vx * math.cos(-env.sensor.yaw) + vy* math.sin(-env.sensor.yaw)
            world_vy = vy * math.cos(-env.sensor.yaw) - vx *math.sin(-env.sensor.yaw)
            x = env.sensor.x
            y = env.sensor.y
            target_x = env.target_x
            target_y = env.target_y
            postion_theta = (target_y-y)/(target_x-x)
            velocity_theta = world_vy/world_vx
            if abs(postion_theta-velocity_theta)>0.03:
                obs, rewards, dones, info = env.step(2)
                actions.append(2)
            else:
                brake_flag = True
                obs, rewards, dones, info = env.step(2)
                actions.append(4)
    if dones:
        break
print(f"步数：{steps}")
plt.figure()
plt.plot(env.throttles,'b')
plt.plot(env.steers,'y')
plt.plot(env.brakes,'r')
plt.legend(['throttle','steer','brake']) 
plt.savefig("status-omega-time.png")

plt.figure()
plt.plot(actions,'r')
plt.savefig("actions.png")