import gym

from stable_baselines.common.policies import MlpPolicy
from stable_baselines.common import make_vec_env
from stable_baselines import PPO2
from my_env.gym_env_2 import CarEnv
# multiprocess environment
env = CarEnv()
model = PPO2(MlpPolicy, env, verbose=1)
model.learn(total_timesteps=1000000)
model.save("ppo2_env2")

del model # remove to demonstrate saving and loading

model = PPO2.load("ppo2_env2")

# Enjoy trained agent
obs = env.reset()
while True:
    action, _states = model.predict(obs)
    obs, rewards, dones, info = env.step(action)
    # env.render()