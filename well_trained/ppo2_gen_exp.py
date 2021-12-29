
from stable_baselines.gail import generate_expert_traj
import math
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
obs = env.reset()
steps=0
actions = []

model = PPO2(MlpPolicy, env, verbose=1,tensorboard_log='./', full_tensorboard_log=True, seed=1)
#model.learn(total_timesteps=800000)
#model.save("ppo2_env1")

model = PPO2.load("ppo2_2ps2")
generate_expert_traj(model, 'expert_ps2', env, n_episodes=100) # 100