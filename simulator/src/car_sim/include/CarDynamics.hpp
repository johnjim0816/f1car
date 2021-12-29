/*!
 * \file CarDynamics.hpp
 *
 * Relatively simple car dynamics based on the following paper:
 *  "Steady-State Cornering Equilibria and Stabilization for a
 Vehicle During Extreme Operating Conditions" by Velenis, Frazzoli, and Tsiotras
 *
 *  Created on: Mar 22, 2013
 *      Author: Mark Cutler
 *     Contact: markjcutler@gmail.com
 *
 */

#ifndef CARDYNAMICS_HPP_
#define CARDYNAMICS_HPP_

// Global includes
#include <valarray>
#include <boost/bind.hpp>
#include <iostream>
#include <random>
#include <chrono>

//  Xiaoyin, added for rk44
#include <boost/function.hpp>

// Local includes
//#include "../utils.hpp"

// I am 100% sure this is the hpp file used by my project, Xiaoyin
namespace acl
{

const unsigned int STATE_LENGTH = 26;// original value is 8;
const double TOL = 0.0001; ///< Tolerance on slipping (m/s), if difference is
///smaller than this, consider the wheels not
///slipping

/// parameter struct
struct sCarParam
{   // Xiaoyin   
    double PI;
    double GRAVITY;
    
    double D, C, B; ///< Magic Formula tire coefficients
    double rR; ///< Rear wheel radius (m)
    double rF; ///< Front wheel radius (m)
    double lF; ///< Distance to front wheels from center of gravity (m)
    double lR; ///< Distance to rear wheels from center of gravity (m)
    double MaxWheelAngle; ///< Maximum turning angle (radians)
    double MaxWheelSpeed; ///< Maximum allowable commanded wheel speed (rad/sec)
    double BackEMFGain_up; ///< Gain in measured wheel response (going up) (Iw*TG/(s+BEMFG)) 9
    double BackEMFGain_down; ///< Gain in measured wheel response (going down) (Iw*TG/(s+BEMFG)) 1.4
    double TorqueMin; ///< Minimum command before wheel responds
    double TorqueMax;
    double m; ///< Vehicle mass (kg)
    double Iz; ///< z-axis inertia (kg*m^2)
    double IwF; ///< front wheel rotational inertia (kg*m2)
    double IwR; ///< Rear wheel rotational inertia (kg*m2)
    double h; ///< Height of center of gravity above ground (m)
    double omegaCLup_a; ///< coefficient in measured closed loop wheel response
                        ///(going up) (a/(s+b))
    double omegaCLup_b; ///< coefficient in measured closed loop wheel response
                        ///(going up) (a/(s+b))
    double omegaCLdown_a; ///< coefficient in measured closed loop wheel
                          ///response (going down) (a/(s+b))
    double omegaCLdown_b; ///< coefficient in measured closed loop wheel
                          ///response (going down) (a/(s+b))
                          
    double wl;
    double wr;// half of wheel treck, added by Xiaoyin for 4W drive
};

/// parameter struct
struct sNoiseParam
{
    double velocity_variance; ///< Guassian variance on velocity states
    double dpsi_variance; ///< Guassian variance on turn rate
    double omega_variance; ///< Guassian variance on wheel speed
    
    double axy_variance; // Xiaoyin added
};

/// state struct
struct sCarState
{
    double x, y; ///< Inertial positions
    double Vx, Vy; ///< Body-frame velocities
    double psi, dpsi; ///< Yaw and yaw rate
    //double omegaF; ///< Front wheel speed
    //double omegaR; ///< Rear wheel speed
    
    double omegaFL;
    double omegaFR;
    double omegaRL;
    double omegaRR;
    
    double Vxd;// Vx dot from last step, added by Xiaoyin
    double Vyd;// Vy dot from last step, added by Xiaoyin
    
    double f_FLx;
    double f_FLy;
    double f_FLz;
    
    double f_FRx;
    double f_FRy;
    double f_FRz;
    
    double f_RLx;
    double f_RLy;
    double f_RLz;
    
    double f_RRx;
    double f_RRy;
    double f_RRz;
    
    double ax;
    double ay;
    
    
};

/**
 *  Car dynamics
 */
class CarDynamics
{
public:
    CarDynamics();
    virtual ~CarDynamics();

    void setMFParams(double b, double c, double d);
    void setParamStruct(struct sCarParam param);
    void setNoiseStruct(struct sNoiseParam n);
    void chooseInputType(bool commandWheelSpeed);
    void setTorqueDelta(double throttle, double turn);
    void setOmegaDelta(double omegaDes, double turn);
    void setInitialState(struct sCarState initState);

    struct sCarState getState(void);
    struct sCarParam getParams(void);
    struct sNoiseParam getNoise(void);

    void integrateStep(double dt);

private:
    std::string name; ///< car name
    struct sCarState state; ///< state
    struct sCarParam param; ///< param struct

    std::default_random_engine generator;
    std::normal_distribution<double> velocity_noise; ///< Guassian noise on velocity states
    std::normal_distribution<double> dpsi_noise; ///< Guassian noise on turn rate
    std::normal_distribution<double> omega_noise; ///< Guassian noise on wheel speed
    
    std::normal_distribution<double> axy_noise; // Added by Xiaoyin!
    struct sNoiseParam noise; ///< simulator noise

    bool commandWheelSpeed; ///< when true, set wheel speed desired instead of torque

    double delta; ///< wheel steering angle in radians
    
    
    double a_old[2]= {0.0,0.0}; //  
    //double T_F; ///< Commanded front wheel torque
    //double T_R; ///< Commanded rear wheel torque
    double T_FL, T_FR, T_RL, T_RR; //  Xiaoyin,command of each 4 wheel
    
    double beta; ///< sideslip angle in radians
    
    double omegaDes; ///< desired wheel speed

    double V_Fx, V_Fy, V_Rx, V_Ry; ///< vehicle body frame velocities at front and rear wheels
    double mu_Fx, mu_Fy, mu_Rx, mu_Ry; ///< tire friction coefficients
    double f_Fx, f_Fy, f_Rx, f_Ry; ///< tire friction forces
    
    // added by Xiaoyin, for 4W drive
    double V_FLX,V_FLY,   V_RLX,V_RLY,   V_FRX,V_FRY,   V_RRX,V_RRY;
    double f_FLz,         f_FRz,         f_RLz,         f_RRz;  
    double mu_FLx,mu_FLy, mu_FRx,mu_FRy, mu_RLx,mu_RLy, mu_RRx,mu_RRy;
    double f_FLx,f_FLy,   f_FRx,f_FRy,   f_RLx,f_RLy,   f_RRx,f_RRy;
    
    double ax,ay; // added by Xiaoyin

    double simTime; ///< simulation time

    void calcVehicleComponetVelocities(void);
    double MF(double s);
    double xSlip(double Vx, double omega, double r);
    double ySlip(double Vy, double omega, double r);
    void calcFrictionCoeffs(void);
    //void calcFrictionForces(void);
    void calcFrictionForces(double ax, double ay);
    void updateNoise(void);
    double wheelSpeed(double throttle, double omega, double f);
    std::valarray<double> dynamics(double dt, std::valarray<double> s, double* a_old);
    
    
    // Xiaoyin
    std::valarray<double> rk44(double t0, std::valarray<double> y0, double* a_old, double dt,
            boost::function<std::valarray<double>(double, std::valarray<double>, double*)> calc_der);
            
    double saturate(double val, double max, double min);        
    double norm(double x, double y);

};

} /* namespace acl */
#endif /* CARDYNAMICS_HPP_ */
