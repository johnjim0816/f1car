/*!
 * \file main.cpp
 *
 * Main function for the simple car simulator
 *
 *  Created on: Mar 25, 2013
 *      Author: Mark Cutler
 *         Contact: markjcutler@gmail.com
 *
 */

// Global includes
#include <iostream>

// Local includes
#include "CarSim.hpp"

int main(int argc, char* argv[]) {

    ros::init(argc, argv, "sim");
    ros::NodeHandle n;


        // parse command line arguements -- Note: these are typically set via launch file
        bool service_mode = true;
        std::cout << "************************* " << argc << std::endl;//argc ==2
        for (int i=0; i<argc; i++)
            std::cout << "argv[i]:"<<argv[i] << std::endl;
        if (argc == 2) {
                std::cout << "argv[1]:"<< argv[1] << std::endl;

                if (std::strcmp(argv[1], "false") == 0
                                or std::strcmp(argv[1], "False") == 0
                                or std::strcmp(argv[1], "0") == 0) {
                        service_mode = false;
                        ROS_INFO("Starting in real time mode");
                }
        }

        // Initialize vehicle
        CarSim car; //// Initialize vehicle
        car.service_mode = service_mode; // False from .launch ???

        // Check for proper renaming of node namespace
        if (!ros::this_node::getNamespace().compare("/")) {
                ROS_ERROR(
                                "Error :: You should be using a launch file to specify the node namespace!\n");
                return (-1);
        }

        //## Welcome screen
        ROS_INFO(
                        "\n\nStarting ROS Car Dynamics code for for %s...\n\n\n", ros::this_node::getNamespace().c_str());

        // Override car parameters if necessary

        // Set initial state if necessary
        acl::sCarState initState;
        initState.x = -4;
        initState.y = 4;
        initState.psi = 0.0;//-PI/2.0;
//      initState.omegaF = 0.1;
//      initState.omegaR = initState.omegaF;
//      initState.Vx = initState.omegaF*0.035;
        car.dynamics.setInitialState(initState);

// Set initial noise if necessary
//      acl::sNoiseParam noise;
//      noise.velocity_variance = 0.01;
//      noise.dpsi_variance = 0.01;
//      noise.omega_variance = 0.01;
//      car.dynamics.setNoiseStruct(noise);

// Set up state publishers
        car.pose_pub = n.advertise<geometry_msgs::PoseStamped>("pose", 0);
        car.twist_pub = n.advertise<geometry_msgs::TwistStamped>("vel", 0);
        car.state_pub = n.advertise<acl_msgs::CarState>("state", 0);
        
        // build a new publisher for pub kinematic data
        
        car.data_pub = n.advertise<std_msgs::Float64MultiArray> ("data",0);

        // Set listener callbacks for command data
        ros::Subscriber sub_cmd = n.subscribe("carsimCmd", 1, &CarSim::cmdCallback,&car);
        
        std::cout << "car.sevice_mode  is :"<<car.service_mode << std::endl;
        if (car.service_mode) {
                // Start service for requesting a single integrated step
                car.service = n.advertiseService("run_step", &CarSim::runSimStep, &car);

                // Initialize timer for broadcasting state information
                car.broadcastTimer = n.createTimer(ros::Duration(BROADCAST_DT),&CarSim::broadcastStateTimer, &car);

                car.timeoutTimer = n.createWallTimer(ros::WallDuration(BROADCAST_TIMEOUT), &CarSim::broadcastTimeout,&car, true);
        } else {
                // initialize main controller loop
                car.controllerTimer = n.createTimer(ros::Duration(DT), &CarSim::runSim,&car); //call runSim here; run "runSim " at the frequency of DT; pub() commands are in here  DT =1/200

        }

//      double now = ros::Time::now().toSec();
//      for (int i=0; i<1000; i++){
//              car.dynamics.integrateStep(0.01);
//      }
//      ROS_INFO("Elapsed Time: %f",ros::Time::now().toSec() - now);

// run the code
        ros::spin();

        return 0;
}
