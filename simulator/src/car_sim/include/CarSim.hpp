/*!
 * \file CarSim.hpp
 *
 * CarSim header
 *
 *  Created on: Mar 25, 2013
 *      Author: Mark Cutler
 *	   Contact: markjcutler@gmail.com
 *
 */

#ifndef CARSIM_HPP_
#define CARSIM_HPP_

// ROS includes
#include "ros/ros.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/TwistStamped.h"
#include "std_msgs/Float64MultiArray.h"

// Local Messages/Services
#include "acl_msgs/RunStep.h"
#include "acl_msgs/CarState.h"

// ACL Utils Library
//#include "acl/dynamics/CarDynamics.hpp"
#include "CarDynamics.hpp"
//#include "acl/utils.hpp"
//#include "../utils.hpp"
const double DT = 1 / 800.0;//1/200.0; ///< default simulation time step
const double BROADCAST_DT = 1 / 30.0; ///< frame rate of state broadcasting for service mode
const double BROADCAST_TIMEOUT = 2.0; ///< seconds since last call after which state is no longer broadcast

enum CMD_TYPES
{
	NOT_DRIVING, THROTTLE, SIMPLE_CONTROLLER, WHEEL_SPEED, RESET
};

/**
 *  Simple wrapper class for running CarDynamics in a ros node
 */
class CarSim
{
public:
	CarSim();
	virtual ~CarSim();

	ros::Publisher pose_pub, twist_pub, state_pub, data_pub;
	acl::CarDynamics dynamics;
	acl::CarDynamics dynamicsStep;
	bool service_mode;
	ros::Timer broadcastTimer, controllerTimer;
	ros::WallTimer timeoutTimer;
	ros::ServiceServer service;

	void cmdCallback(const std_msgs::Float64MultiArray& msg);
	void runSim(const ros::TimerEvent& e);
	void integrateStep(double dt);
	bool runSimStep(acl_msgs::RunStep::Request &req,
			acl_msgs::RunStep::Response &res);
	void broadcastStateTimer(const ros::TimerEvent& e);
	void broadcastTimeout(const ros::WallTimerEvent& e);

private:

	acl::sCarState getInitialState(void);
	acl_msgs::CarState state2RosState(acl::sCarState);
	acl::sCarState rosState2state(acl_msgs::CarState);
	void broadcastState(acl_msgs::CarState);

	double getYaw(geometry_msgs::Quaternion q);
	geometry_msgs::Quaternion setOrientation(double yaw);
	bool broadcastSrvState;

};

#endif /* CARSIM_HPP_ */
