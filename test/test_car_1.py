
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
for _ in range(30):
    env.step(0)
for _ in range(8):
    env.step(2)
#print(env.sensor.x,env.sensor.y,env.sensor.yaw)#1.1074793090176618 3.733337954862964
for _ in range(1):
    print(env.sensor.x,env.sensor.y,env.sensor.yaw)#1.1074793090176618 3.733337954862964
    env.step(4) # 0.035
    # time.sleep(4)
for _ in range(10):
    print(env.sensor.x,env.sensor.y,env.sensor.yaw)#1.3095173939053981 3.678311428339541 3 3.1
    time.sleep(0.5)

# for _ in range(10):
#     env.step(4)
# print(env.sensor.x,env.sensor.y)
# 地图位置 == 传感器的位置
# 地图上位置一样，传感器位置不一样？ 不同时机
#  