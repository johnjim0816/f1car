from stable_baselines import PPO2
from stable_baselines.gail import ExpertDataset
from stable_baselines.common.policies import MlpPolicy

from my_env.gym_env_1 import CarEnv
# Using only one expert trajectory
# you can specify `traj_limitation=-1` for using the whole dataset
dataset = ExpertDataset(expert_path='expert_env1.npz',
                        traj_limitation=1, batch_size=128)

env = CarEnv()
model = PPO2(MlpPolicy, env, verbose=1)
# Pretrain the PPO2 model
model.pretrain(dataset, n_epochs=200)

# As an option, you can train the RL agent
# model.learn(int(1e5))

# Test the pre-trained model
env = model.get_env()
obs = env.reset()

reward_sum = 0.0
for _ in range(10):
        action, _ = model.predict(obs)
        obs, reward, done, _ = env.step(action)
        reward_sum += reward
        env.render()
        if done:
                print(reward_sum)
                reward_sum = 0.0
                obs = env.reset()

env.close()