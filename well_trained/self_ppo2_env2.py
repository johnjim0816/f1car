import sys
import os
curr_path = os.path.dirname(os.path.abspath(__file__))  # 当前文件所在绝对路径
parent_path = os.path.dirname(curr_path)  # 父路径
sys.path.append(curr_path)  # 添加路径到系统路径

from datetime import datetime
import torch
import numpy as np
import gym
from algos.ppo2 import PPO
from utils.utils import make_dir
from gym_env_2ps2 import CarEnv # Currently running 
#from trpo_env2p import CarEnv 
curr_time = datetime.now().strftime("%Y%m%d-%H%M%S")  # 获取当前时间
class Config:
    '''超参数
    '''
    def __init__(self) -> None:
        ################################## 环境超参数 ###################################
        self.env_name = 'env2' # 环境名称
        self.algo_name = 'self_ppo2'
        self.continuous_action = False # 是否为连续动作空间
        self.max_ep_len = 150 # 每回合的最大步数
        self.max_training_timesteps = int(1e5) # 最大训练步数
        self.print_freq = self.max_ep_len*4 # 打印频率
        self.log_freq = self.max_ep_len*2 #日志频率
        self.save_model_freq = int(2e4) # 保存模型的频率
        self.action_std = None # 动作标准差
        self.seed = 1 # 随机种子
        ################################################################################

        ################################## 算法超参数 ###################################
        self.update_timestep = self.max_ep_len * 4 # 策略更新频率 1~10
        self.k_epochs = 40 # 20~200
        self.eps_clip = 0.2   # clip参数,0~0.5
        self.gamma = 0.99 # 折扣因子
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

def train(cfg,env,agent):
    '''训练

    Args:
        cfg ([type]): [description]
        env ([type]): [description]
        agent ([type]): [description]
    '''

    log_f_name = cfg.result_path + 'reward_log.csv'
    print("logging at : " + log_f_name)

    checkpoint_path = cfg.model_path + f"PPO_seed{cfg.seed}.pth"
    print("save checkpoint path : " + checkpoint_path)

    log_f = open(log_f_name,"w+")
    log_f.write('episode,timestep,reward\n')

    print_running_reward = 0
    print_running_episodes = 0

    log_running_reward = 0
    log_running_episodes = 0

    time_step = 0
    i_ep = 0

    while time_step <= cfg.max_training_timesteps:
        state = env.reset()
        ep_reward = 0
        for t in range(1, cfg.max_ep_len+1):

            # select action with policy
            action = agent.choose_action(state)
            state, reward, done, _ = env.step(action)

            # saving reward and is_terminals
            agent.buffer.rewards.append(reward)
            agent.buffer.is_terminals.append(done)

            time_step +=1
            ep_reward += reward

            # update PPO agent
            if time_step % cfg.update_timestep == 0:
                agent.update()

            # if continuous action space; then decay action std of ouput action distribution
            if cfg.continuous_action and time_step % cfg.action_std_decay_freq == 0:
                agent.decay_action_std(cfg.action_std_decay_rate, cfg.min_action_std)

            # log in logging file
            if time_step % cfg.log_freq == 0:

                # log average reward till last episode
                log_avg_reward = log_running_reward / log_running_episodes
                log_avg_reward = round(log_avg_reward, 4)

                log_f.write('{},{},{}\n'.format(i_ep, time_step, log_avg_reward))
                log_f.flush()

                log_running_reward = 0
                log_running_episodes = 0

            # printing average reward
            if time_step % cfg.print_freq == 0:

                # print average reward till last episode
                print(print_running_episodes)
                print_avg_reward = print_running_reward / print_running_episodes
                print_avg_reward = round(print_avg_reward, 2)

                print("Episode : {} \t Timestep : {} \t Average Reward : {}".format(i_ep, time_step, print_avg_reward))
                print_running_reward = 0
                print_running_episodes = 0

            # save model weights
            if time_step % cfg.save_model_freq == 0:
                print("--------------------------------------------------------------------------------------------")
                print("saving model at : " + checkpoint_path)
                agent.save(checkpoint_path)
                print("model saved")
                print("Elapsed Time  : ", datetime.now().replace(microsecond=0) - start_time)
                print("--------------------------------------------------------------------------------------------")
            if done:
                break
        print_running_reward += ep_reward
        print_running_episodes += 1

        log_running_reward += ep_reward
        log_running_episodes += 1
        i_ep += 1
    log_f.close()
    # env.close()

    # print total training time
    
if __name__ == '__main__':
    cfg = Config()
    make_dir(cfg.result_path, cfg.model_path)  # 创建保存结果和模型路径的文件夹
    env,agent = env_agent_config(cfg)
    
    start_time = datetime.now().replace(microsecond=0)
    print("Started training at (GMT) : ", start_time)
    train(cfg,env,agent)
    print("============================================================================================")
    end_time = datetime.now().replace(microsecond=0)
    print("Started training at (GMT) : ", start_time)
    print("Finished training at (GMT) : ", end_time)
    print("Total training time  : ", end_time - start_time)
    print("============================================================================================")
    
    
    
    
    
    
    
