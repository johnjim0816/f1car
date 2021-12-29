import gym

import sys
sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')

from stable_baselines.common.policies import MlpPolicy
from stable_baselines.common import make_vec_env
from stable_baselines import PPO2
#from gym_env_1 import CarEnv
#from gym_env_2 import CarEnv 
#from gym_env_3 import CarEnv 
#from gym_env_4 import CarEnv 
#from gym_env_5 import CarEnv 
from gym_env_2ps2 import CarEnv # Currently running 
#from trpo_env2p import CarEnv 
#from gym_env_backup import CarEnv 
# multiprocess environment
import datetime

curr_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")  # 获取当前时间
env = CarEnv()



model = PPO2(MlpPolicy, env, verbose=1)
model.learn(total_timesteps=900000)
model.save(f"ppo2_2ps2_{curr_time}")

del model # remove to demonstrate saving and loading

model = PPO2.load("ppo2_2ps2_{curr_time}")
# Enjoy trained agent
obs = env.reset()
#while True:
episodes= 700000
for episode in range(1, episodes+1):
    
    action, _states = model.predict(obs)
    obs, rewards, dones, info = env.step(action)
    # env.render()
