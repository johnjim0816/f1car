import sys
import os
curr_path = os.path.dirname(os.path.abspath(__file__))  # 当前文件所在绝对路径
parent_path = os.path.dirname(curr_path)  # 父路径
sys.path.append(curr_path)  # 添加路径到系统路径
import time
from datetime import datetime

import torch
import numpy as np

import gym
#from gym_env_2ps2 import CarEnv
from gym_env_3 import CarEnv # Currently running

from algos.ppo2 import PPO
curr_time = datetime.now().strftime("%Y%m%d-%H%M%S")  # 获取当前时间
#checkpoint_path = "/media/crl/DATA/Desktop/f1car/well_trained/outputs/self_ppo2/env2/20220101-150930/models/PPO_seed1.pth" # a good model
#checkpoint_path = "/media/crl/DATA/Desktop/f1car/well_trained/outputs/self_ppo2/env2/20220119-121726/models/PPO_seed1.pth" # discount 0.8
checkpoint_path = "/media/crl/DATA/Desktop/f1car/well_trained/outputs/self_ppo2/env2/20220119-194745/models/PPO_seed1.pth" # discount 0.8



class Config:
    '''超参数
    '''
    def __init__(self) -> None:
        ################################## 环境超参数 ###################################
        self.env_name = 'env2' # 环境名称
        self.algo_name = 'self_ppo2'
        self.continuous_action = False # 是否为连续动作空间
        self.max_ep_len = 150 # 每回合的最大步数
        self.test_eps =50 # 测试回合数
        self.print_freq = self.max_ep_len*4 # 打印频率
        self.log_freq = self.max_ep_len*2 #日志频率
        self.save_model_freq = int(2e4) # 保存模型的频率
        self.action_std = None # 动作标准差
        self.seed = 1 #1 # 随机种子
        ################################################################################

        ################################## 算法超参数 ###################################
        self.update_timestep = self.max_ep_len * 4 # 策略更新频率 1~10
        self.k_epochs = 40 # 20~200
        self.eps_clip = 0.2   # clip参数,0~0.5
        self.gamma = 0.8#0.99 # 折扣因子   gamma close to 1, more weight to initial reward; gamma clos to 0, weight to final step.
        self.actor_lr = 0.0003 # actor网络的学习率
        self.critic_lr = 0.001 # critic网络的学习率
        ################################################################################

        ################################# 保存结果相关参数 ##############################
        self.result_path = curr_path + "/outputs/" + self.algo_name+'/'+self.env_name + \
            '/' + curr_time + '/results/'  # 保存结果的路径
        self.model_path = curr_path + "/outputs/" + self.algo_name+'/'+self.env_name + \
            '/' + curr_time + '/models/'  # 保存模型的路径
        ################################################################################
################################### Training ###################################
def env_agent_config(cfg):
    env = CarEnv()
    state_dim = env.observation_space.shape[0]
    # 动作维度
    if cfg.continuous_action:
        action_dim = env.action_space.shape[0]
    else:
        action_dim = env.action_space.n
    if cfg.seed:
        print("--------------------------------------------------------------------------------------------")
        print("setting random seed to ", cfg.seed)
        torch.manual_seed(cfg.seed)
        env.seed(cfg.seed)
        np.random.seed(cfg.seed)
    agent = PPO(state_dim, action_dim, cfg)
    return env,agent


#################################### Testing ###################################


def test(cfg,env,agent):

    print("Start to testing")

    agent.load(checkpoint_path)

    test_running_reward = 0

    for ep in range(1, cfg.test_eps+1):
        ep_reward = 0
        state = env.reset()

        for t in range(1, cfg.max_ep_len+1):
            action = agent.choose_action(state)
            state, reward, done, _ = env.step(action)
            ep_reward += reward

            if done:
                break

        # clear buffer
        agent.buffer.clear()

        test_running_reward +=  ep_reward
        print('Episode: {} \t\t Reward: {}'.format(ep, round(ep_reward, 2)))
        ep_reward = 0

    env.close()


    print("============================================================================================")

    avg_test_reward = test_running_reward / cfg.test_eps
    avg_test_reward = round(avg_test_reward, 2)
    print("average test reward : " + str(avg_test_reward))

    print("============================================================================================")

if __name__ == '__main__':
    cfg = Config()
    # make_dir(cfg.result_path, cfg.model_path)  # 创建保存结果和模型路径的文件夹
    env,agent = env_agent_config(cfg)
    test(cfg,env,agent)