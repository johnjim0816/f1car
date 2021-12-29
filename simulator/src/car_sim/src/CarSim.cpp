/*!
 * \file CarSim.cpp
 *
 * CarSim class file
 *
 *  Created on: Mar 25, 2013
 *      Author: Mark Cutler
 *         Contact: markjcutler@gmail.com
 *
 */

#include "CarSim.hpp"

CarSim::CarSim()
{
        dynamics.setInitialState(getInitialState());
        dynamicsStep.setInitialState(getInitialState());
        broadcastSrvState = false;
        service_mode = true;

}

CarSim::~CarSim()
{
        // TODO Auto-generated destructor stub
}

/**
 * Listen to CmdMessages (fom joystick or other program)
 * @param msg
 */
void CarSim::cmdCallback(const std_msgs::Float64MultiArray& msg)
{
        //std::cout <<"msg.data[.size():" << msg.data.size() << std::endl;
        //std::cout <<"msg.data[0]:" << msg.data[0] << std::endl;

        if (msg.data.size() == 3)
        {
                int status = (int) msg.data[0];
                
                std::cout <<"status:" << status << std::endl;
                if (status == 7)//THROTTLEn
                
                {
                        dynamics.chooseInputType(false);
                        
                        dynamics.setTorqueDelta(msg.data[1], msg.data[2]); //void CarDynamics::setOmegaDelta(double omegaDes, double turn)
                }
                else if (status == 8)
                {
                        dynamics.chooseInputType(true);
                        //std::cout <<"msg.data[1]:" << msg.data[1] << std::endl;
                        //std::cout <<"msg.data[2]:" << msg.data[2] << std::endl;
                        dynamics.setOmegaDelta(msg.data[1], msg.data[2]);// defined in acl::CarDynamics dynamics;
                        
                        
                }
                else if (status == RESET)
                { // reset command
                        dynamics.chooseInputType(false);
                        dynamics.setTorqueDelta(0, 0);
                        acl::sCarState init_state = getInitialState();
                        init_state.psi = 0.0;
                        init_state.x = -4;//-0.5;
                        init_state.y = 4;//-2.5;
                        dynamics.setInitialState(init_state);
                }
                else if (status == NOT_DRIVING)
                { // stop driving
                        dynamics.chooseInputType(true);
                        dynamics.setOmegaDelta(0, 0);
                }
        }
}

/**
 * @return An initial state struct with all zero elements
 */
acl::sCarState CarSim::getInitialState(void)
{
        acl::sCarState s;
        s.Vx = s.Vy = 0.0;
        s.psi = 0.0; //oint forward initially. Xiaoyin
        //s.psi = -PI / 2; // point to the right initially
        
        s.omegaFL = s.omegaFR = s.omegaRL = s.omegaRR= 1; // numerically unstable when set to zero
        s.x = s.y = 0.0;
        
        s.Vxd = 0.0;
        s.Vyd = 0.0; //added by Xiaoyin
        
        return s;
}

/**
 * Run a single time step of the dynamics
 * @param req Initial state, time step, and action
 * @param res Final state
 * @return True
 */
 
// car.controllerTimer = n.createTimer(ros::Duration(DT), &CarSim::runSim,&car);  
bool CarSim::runSimStep(acl_msgs::RunStep::Request &req,acl_msgs::RunStep::Response &res)
{
        timeoutTimer.stop();
        broadcastTimer.start();

        // set initial state
        dynamicsStep.setInitialState(rosState2state(req.startState));

        // set actions
        dynamicsStep.setOmegaDelta(req.omegaDes, req.turn);

        // integrate forward dynamics
        dynamicsStep.integrateStep(req.dt);

        // get new state
        res.finalState = state2RosState(dynamicsStep.getState());

        // choose whether or not the broadcast state will come from these dynamics or not
        broadcastSrvState = req.showVis;

        timeoutTimer.start();

        return true;
}

/**
 * Main function for running the simulation at a fixed rate of 1/DT Hz
 * @param e
 */
void CarSim::runSim(const ros::TimerEvent& e) //called in main.cpp, timer
{
        // integrate forward dynamics and send state
        dynamics.integrateStep(DT);
        broadcastState(state2RosState(dynamics.getState())); // Goto -> Line 150

}

void CarSim::broadcastTimeout(const ros::WallTimerEvent& e)
{
         // If this fires, stop the state timer broadcast
        broadcastTimer.stop();
}

/**
 * Simple function to broadcast the service mode state at a fixed rate
 * @param e
 */
void CarSim::broadcastStateTimer(const ros::TimerEvent& e)
{
        broadcastState(state2RosState(dynamicsStep.getState()));
}

/**
 * Broadcast the state data in a ros message
 * @param state CarState of data that should be broadcast
 */
void CarSim::broadcastState(acl_msgs::CarState state)
{

        // publish results
        geometry_msgs::PoseStamped pose;
        pose.header.frame_id = ros::this_node::getNamespace().substr(1, 4);
        pose.header.stamp = ros::Time::now();
        pose.pose = state.pose;

        geometry_msgs::TwistStamped twist;
        twist.header = pose.header;
        double yaw = getYaw(state.pose.orientation);
        twist.twist.linear.x = state.Vx * cos(yaw) - state.Vy * sin(yaw);
        twist.twist.linear.y = state.Vx * sin(yaw) + state.Vy * cos(yaw);
        twist.twist.angular.z = state.r;

        pose_pub.publish(pose);
        twist_pub.publish(twist);

        state.header = pose.header;
//      acl_msgs::CarState newState;
//      newState.header = pose.header;
//      newState.Vx = state.Vx;
//      newState.Vy = state.Vy;
//      newState.pose = state.pose;
//      newState.omegaF = state.omegaF;
//      acl::sCarParam param = dynamics.getParams();
//      newState.omegaR = state.omegaR*param.rF;
//      state_pub.publish(newState);
        state_pub.publish(state);
        
        
        // push data into "data". std_msgs::Float64MultiArray;
        std_msgs::Float64MultiArray kin_data;
        kin_data.data.clear();
        
        kin_data.data.push_back(state.pose.position.x);//0
        kin_data.data.push_back(state.pose.position.y);//1   
        kin_data.data.push_back(state.Vx);//2
        kin_data.data.push_back(state.Vy);//3
        kin_data.data.push_back(yaw);//4
        //kin_data.data.push_back(state.pose.orientation);
        kin_data.data.push_back(state.r);//5
        kin_data.data.push_back(state.omegaF);//6
        kin_data.data.push_back(state.omegaR);//7
        //publish force
        kin_data.data.push_back(state.f_FLx);
        kin_data.data.push_back(state.f_FLy);
        kin_data.data.push_back(state.f_FLz);
        
        kin_data.data.push_back(state.f_FRx);
        kin_data.data.push_back(state.f_FRy);
        kin_data.data.push_back(state.f_FRz);
        
        kin_data.data.push_back(state.f_RLx);
        kin_data.data.push_back(state.f_RLy);
        kin_data.data.push_back(state.f_RLz);
        
        kin_data.data.push_back(state.f_RRx);
        kin_data.data.push_back(state.f_RRy);
        kin_data.data.push_back(state.f_RRz);
        
        kin_data.data.push_back(state.ax);
        kin_data.data.push_back(state.ay);
        
        data_pub.publish(kin_data);
        

}

/**
 * Simple helper function for converting acl::sCarState to ros message CarState
 * @param in
 * @return
 */
acl_msgs::CarState CarSim::state2RosState(acl::sCarState in)
{
        acl_msgs::CarState out;
        out.pose.position.x = in.x;
        out.pose.position.y = in.y;
        out.Vx = in.Vx;
        out.Vy = in.Vy;
        out.pose.orientation = setOrientation(in.psi);
        out.r = in.dpsi;
        out.omegaF = (in.omegaFL + in.omegaFR)/2.0;
        out.omegaR = (in.omegaRL + in.omegaRR)/2.0;
        
        out.f_FLx = in.f_FLx;
        out.f_FLy = in.f_FLy;
        out.f_FLz = in.f_FLz;
        
         
        out.f_FRx = in.f_FRx;
        out.f_FRy = in.f_FRy;
        out.f_FRz = in.f_FRz;
        
        out.f_RLx = in.f_RLx;
        out.f_RLy = in.f_RLy;
        out.f_RLz = in.f_RLz;
        
        out.f_RRx = in.f_RRx;
        out.f_RRy = in.f_RRy;
        out.f_RRz = in.f_RRz;
        
        out.ax = in.ax;
        out.ay = in.ay;

        return out;
}

/**
 * Simple helper function for converting ros message CarState to acl::sCarState
 * @param in
 * @return
 */
acl::sCarState CarSim::rosState2state(acl_msgs::CarState in)
{
        acl::sCarState out;
        out.x = in.pose.position.x;
        out.y = in.pose.position.y;
        out.Vx = in.Vx;
        out.Vy = in.Vy;
        out.psi = getYaw(in.pose.orientation); // yaw -> quateronin
        out.dpsi = in.r;
        out.omegaFL = in.omegaF;
        out.omegaFR = in.omegaR;
        out.omegaRL = in.omegaF;
        return out;
}

/**
 * Get yaw from quaternion
 * @param q Quaternion
 * @return Yaw in radians
 */
double CarSim::getYaw(geometry_msgs::Quaternion q)
{
        return atan2(2 * (q.w * q.z + q.x * q.y), 1 - 2 * (q.y * q.y + q.z * q.z));
}

/**
 * Set quaternion from just yaw
 * @param yaw Yaw angle in radians
 * @return Quaternion
 */
geometry_msgs::Quaternion CarSim::setOrientation(double yaw)
{
        // from wikipedia: http://en.wikipedia.org/wiki/Conversion_between_quaternions_and_Euler_angles
        geometry_msgs::Quaternion q;
        q.w = cos(yaw / 2.0);
        q.x = 0.0;
        q.y = 0.0;
        q.z = sin(yaw / 2.0);
        return q;
}
