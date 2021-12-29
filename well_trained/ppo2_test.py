import gym

import sys
# sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')

from stable_baselines.common.policies import MlpPolicy
from stable_baselines.common import make_vec_env
from stable_baselines import PPO2
#from gym_env_1 import CarEnv
#from gym_env_2 import CarEnv
from gym_env_2ps2 import CarEnv # currently using
#from gym_env_backup import CarEnv 
# multiprocess environment
env = CarEnv()

model = PPO2(MlpPolicy, env, verbose=1,tensorboard_log='./', full_tensorboard_log=True, seed=1)
#model.learn(total_timesteps=800000)
#model.save("ppo2_env1")

model = PPO2.load("ppo2_2ps2")

# Enjoy trained agent
obs = env.reset()
while True:

    
    action, _states = model.predict(obs)
    obs, rewards, dones, info = env.step(action)
    if dones:
      obs = env.reset()
    # env.render()
