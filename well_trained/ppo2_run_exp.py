from stable_baselines import PPO2
from stable_baselines.gail import ExpertDataset
from stable_baselines.common.policies import MlpPolicy
from stable_baselines.common.policies import MlpPolicy
from stable_baselines.common import make_vec_env
from stable_baselines import PPO2
#from gym_env_1 import CarEnv
#from gym_env_2 import CarEnv
from gym_env_2ps2 import CarEnv # currently using
#from gym_env_backup import CarEnv 
# multiprocess environmentnv
# Using only one expert trajectory
# you can specify `traj_limitation=-1` for using the whole dataset
dataset = ExpertDataset(expert_path='expert_ps2.npz',
                        traj_limitation=1, batch_size=4)

env = CarEnv()
model = PPO2(MlpPolicy, env, verbose=1,tensorboard_log='./', full_tensorboard_log=True, seed=1)
# Pretrain the PPO2 model
model.pretrain(dataset, n_epochs=100)

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
    if done:
            print(reward_sum)
            reward_sum = 0.0
            obs = env.reset()

env.close()