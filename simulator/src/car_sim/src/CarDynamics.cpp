/*!
 * \file CarDynamics.cpp
 *
 * @todo Brief file description
 *
 *  Created on: Mar 22, 2013
 *      Author: Mark Cutler
 *     Contact: markjcutler@gmail.com
 *
 */
#include  <math.h>
#include "CarDynamics.hpp"
//4W---------------------------------------4W---------------------------------------4W----------------
namespace acl
{

CarDynamics::CarDynamics()
{

    param.PI = 3.1415926;
    param.GRAVITY = 9.81;
    // Initialize all variables
    simTime = 0.0;
    commandWheelSpeed = true;

    // Set default initial parameters
    
    // Rally
    param.B = 85.1;   
    param.C = 1.07; 
    param.D = 0.495;        // mux related, test; Measured .. mux=muy = 0.4 ~0.5
    //  // RC01
    //param.B = 10.31;    // From initial optimization
    //param.C = 1.07; // From initial optimization
    //param.D = 0.340;    // From initial optimization
    //  param.rF = 0.035/2.0;   // measured
    //  param.rR = param.rF;
    //  param.lF = 0.060;   // measured
    //  param.lR = 0.053;   // measured
    //  param.MaxWheelAngle = 15*PI/180.0; // From initial optimization
    //  param.MaxWheelSpeed = 500; // roughly measured
    //  param.MaxTorque = 0.005; // guess
    //  param.m = 0.20516;  // measured
    //  param.Iz = 3.7672e-04;  // measured
    //  param.IwF = 0.00001; // guess
    //  param.IwR = param.IwF;
    //  param.h = 0.033; // roughly measured
    //  param.muW = 0*0.0001;   // guess
    //  param.omegaCL_a = 50*0.08923; // estimates from matlab's sysid toolbox
    // looking at measured data
    //  param.omegaCL_b = 50*0.08618;

//    // RC02
    //param.B = 9.5; // From initial optimization
    //param.C = 1.1; // From initial optimization
    //param.D = 0.62; // From initial optimization
//    param.rF = 0.0606 / 2.0; // measured
//    param.rR = param.rF;
//    param.lF = 0.1; // measured
//    param.lR = 0.107; // measured
//    param.MaxWheelAngle = 20 * PI / 180.0; // From initial optimization
//    param.MaxWheelSpeed = 345; // roughly measured
//    param.MaxTorque = 0.05; // guess
//    param.m = 0.906; // measured
//    param.Iz = 1.0 / 12.0 * param.m
//               * (0.1 * 0.1 + 0.2 * 0.2); // estimated by bar of width 10cm,
//                                          // length 20cm, mass 906 g
//    param.IwF = 0.00001; // guess
//    param.IwR = param.IwF;
//    param.h = 0.02794; // roughly measured
//    param.muW = 0*0.0001; // guess
    param.omegaCLup_a = 50 * 0.089; // initial optimization
    param.omegaCLup_b = 50 * 0.089; // 50*0.086;
    //param.omegaCLdown_a = 50 * 0.03; // initial optimization
    //param.omegaCLdown_b = 50 * 0.03;
    //
    param.omegaCLdown_a = 50 * 0.58; //Xiaoyin ; 4.5
    param.omegaCLdown_b = 50 * 0.58;

    // RC03
    //param.B = 3; // guess
    //param.C = 1.5; // guess
    //param.D = .2; // guess
    param.rF = 0.054; // measured
    param.rR = param.rF;
    param.lF = 0.205;//0.205 // measured
    param.lR = 0.14; //0.14 measured
    param.MaxWheelAngle = 31 * param.PI / 180.0; // From initial optimization
    param.MaxWheelSpeed = 160; // measured
    param.BackEMFGain_up = 9.0; // estimated using step data from none-loaded wheels
    param.TorqueMin = -0.12; // estimated using step data from none-loaded wheels
    param.TorqueMax = 0.28 ;
    param.BackEMFGain_down = 1.4; // estimated using step data from none-loaded wheels
    param.m = 4.2; // measured
    param.Iz = 0.1009;//1.0 / 12.0 * param.m * (0.1 * 0.1 + 0.2 * 0.2); // estimated by bar of width 10cm,
                                                               // length 20cm, mass 1143 g
    param.IwF = 1.7e-4;//0.8 * 3.2e-5; // approximate //wheel weight = 0.044 kg
    param.IwR = param.IwF;
    param.h = 0.04;//0.05;//0.02794; // roughly measured
    
    param.wl = 0.25/2; // l wheel track 
    param.wr = 0.25/2; //r wheel track; added by xiaoyin

    // Set default initial state
    state.x = state.y = state.Vx = state.Vy = 0.0;
    state.psi = state.dpsi = state.omegaFL = state.omegaFR = state.omegaRL = state.omegaRR = 0.0;
    state.Vxd =state.Vyd =0.0;

    delta = T_FL = T_FR =T_RL =T_RR = beta = 0.0;
    //V_Fx = V_Fy = V_Rx = V_Ry = 0.0;
    V_FLX=V_FLY= V_RLX=V_RLY= V_FRX=V_FRY= V_RRX=V_RRY=0.0;// added
    //mu_Fx = mu_Fy = mu_Rx = mu_Ry = 0.0;
    mu_FLx=mu_FLy= mu_FRx=mu_FRy= mu_RLx=mu_RLy= mu_RRx=mu_RRy=0.0;//added
    //f_Fx = f_Fy = f_Rx = f_Ry = 0.0;
    f_FLx=f_FLy= f_FRx=f_FRy = f_RLx=f_RLy = f_RRx=f_RRy=0.0;//added
    omegaDes = 0.0;

    // construct a trivial random generator engine from a time-based seed:
    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
    generator.seed(seed);

    // Set up noise values
    noise.velocity_variance = 0.5;//0.5;//0.5; //4; //8;
    noise.dpsi_variance = 0.2;//0.2;//0.2; //1; //12;
    noise.omega_variance = 8;//100;
    
    noise.axy_variance = 0.0;   // Added by Xiaoyin
    updateNoise();
}

CarDynamics::~CarDynamics()
{
    // TODO Auto-generated destructor stub
}

/**
 *
 * @return
 */
struct sCarState CarDynamics::getState(void)
{
    return this->state;
}

/**
 * Update the internal noise generators with the correct variances
 */
void CarDynamics::updateNoise(void)
{
    velocity_noise = std::normal_distribution<double>(0.0,
            noise.velocity_variance);
    dpsi_noise = std::normal_distribution<double>(0.0, noise.dpsi_variance);
    omega_noise = std::normal_distribution<double>(0.0, noise.omega_variance);
    
    axy_noise =  std::normal_distribution<double>(0.0, noise.axy_variance);
}

/**
 *
 * @return
 */
struct sCarParam CarDynamics::getParams(void)
{
    return this->param;
}

/**
 *
 * @return
 */
struct sNoiseParam CarDynamics::getNoise(void)
{
    return this->noise;
}

/**
 * Initialize state and reset time to zero
 * @param initState Initial state value
 */
void CarDynamics::setInitialState(struct sCarState initState)
{
    state = initState;
    simTime = 0;
}

/**
 * Set noise parameters for simulation
 * @param n
 */
void CarDynamics::setNoiseStruct(struct sNoiseParam n)
{
    noise = n;
    updateNoise();
}

/**
 * Set the magic formula coefficients
 * @param b
 * @param c
 * @param d
 */
void CarDynamics::setMFParams(double b, double c, double d)
{
    param.B = b;
    param.C = c;
    param.D = d;
}

/**
 * @param p
 */
void CarDynamics::setParamStruct(struct sCarParam p)
{
    param = p;
}

/**
 * Choose which input variable you want to send, wheel speed or torque
 * @param cmdWheelSpeed True if you want to command wheel speed (default), false
 * otherwise
 */
void CarDynamics::chooseInputType(bool cmdWheelSpeed)
{
    commandWheelSpeed = cmdWheelSpeed;
}






// Added by Xiaoyin
double CarDynamics::saturate(double val, double max, double min)
{
    if (val > max)
        val = max;
    else if (val < min)
        val = min;

    return val;
}


double CarDynamics::norm(double x, double y)
{
    return sqrt(x * x + y * y);
}
/**
 * Convert normalized throttle and turn commands into torque and delta commands.
 * Sets internal torque and delta variables.
 * @param throttle Throttle input (-1 to 1)
 * @param turn Steering input (-1 to 1)
 */
void CarDynamics::setTorqueDelta(double throttle, double turn)
{   std::cout << "setTorqueDelta is called outside if"; 
    throttle = CarDynamics::saturate(throttle, 1.0, -1.0);
    turn = CarDynamics::saturate(turn, 1.0, -1.0);

    if (not commandWheelSpeed)
    {
        T_FL = throttle; // these could be more elaborate mapping functions
        T_FR = throttle;
        
        T_RL = throttle;
        T_RR = throttle;
        std::cout<< "throttl input T_FL:"<< T_FL<<std::endl;
        delta = turn * param.MaxWheelAngle; // delta is positive to the left
    }
    else
    {
        std::cout << "Error: should be setting desired wheel speed, not torque."
                << std::endl;
    }
}

/**
 * Sets internal desired wheel speed and delta variables.
 * @param omegaDes Desired wheel speed in rad/sec (-500 to 500)
 * @param turn Steering input (-1 to 1)
 */
void CarDynamics::setOmegaDelta(double omegaDes, double turn)
{   
    omegaDes = CarDynamics::saturate(omegaDes, param.MaxWheelSpeed,
            -param.MaxWheelSpeed);
    turn = CarDynamics::saturate(turn, 1.0, -1.0);
     
    
    std::cout <<"omegaDes:" << omegaDes << std::endl; // Output is 0!!!???
    if (commandWheelSpeed)
    {   std::cout << "setOmegaDelta is called Inside if..."; 
        this->omegaDes = omegaDes;
        delta = turn * param.MaxWheelAngle; // delta is positive to the left
    }
    else
    {
        std::cout << "Error: should be setting torque, not desired wheel speed."
                << std::endl;
    }
}

/**
 * Compute the vehicle velocity components at the front and rear wheels
 */
void CarDynamics::calcVehicleComponetVelocities(void)
{
    beta = atan2(state.Vy, state.Vx);
    double V = CarDynamics::norm(state.Vx, state.Vy);
    if (fabs(V) < 0.01)
    {
        beta = 0.0;
        V = 0.0;
    }
    
    //double FF = (param.lF**2 + param.wl**2)**0.5;
    double FF =  pow(  ( pow(param.lF,2)+ pow(param.wl,2) )  , 0.5  );
     
    //double RR = (param.lR**2 + param.wr**2)**0.5;
    double RR =  pow(  ( pow(param.lR,2)+ pow(param.wr,2) )  , 0.5  );
    
    double a = atan2(param.wl,param.lF); //angle front
    double b = atan2(param.wl,param.lR); //angle rear
    
    // left front & left Rear
    V_FLX = V * cos(beta-delta) + state.dpsi*FF* cos(a)* sin(delta) - state.dpsi* FF *sin(a)* cos(delta);
    V_FLY = V * sin(beta-delta) + state.dpsi*FF*cos(a)*cos(delta) + state.dpsi*FF*sin(a)*sin(delta);
    V_RLX = V*cos(beta)- state.dpsi * RR * sin(b);
    V_RLY = V*sin(beta) - state.dpsi * RR*cos(b);
    
    // Right front & right rear
    V_FRX = V*cos(beta-delta) +state.dpsi*FF*cos(a)*sin(delta) +state.dpsi*FF*sin(a)*cos(delta);
    V_FRY = V*sin(beta-delta) +state.dpsi*FF*cos(a)*cos(delta) -state.dpsi*FF*sin(a)*sin(delta);
    V_RRX = V*cos(beta) + state.dpsi*RR*sin(b);
    V_RRY = V*sin(beta) - state.dpsi*RR*cos(b);
    
    // old
    //V_Fx = V * cos(beta - delta) + state.dpsi * param.lF * sin(delta);
    //V_Fy = V * sin(beta - delta) + state.dpsi * param.lF * cos(delta);
    //V_Rx = V * cos(beta);
    //V_Ry = V * sin(beta) - state.dpsi * param.lR;
    // end of old

}


/**
 * Pacejka's "magic formula" for calculating tire friction
 * @param s Theoretical slip
 * @return Total friction coefficient
 */
double CarDynamics::MF(double s)
{
    return param.D * sin(param.C * atan(param.B * s));
}

/**
 * Calculate slip in x direction
 * @param Vx Body x velocity
 * @param omega Wheel speed
 * @return
 */
double CarDynamics::xSlip(double Vx, double omega, double r)
{
    if (omega * r != 0.0)
    {
        //std::cout << "slip x: "<< (Vx - omega * r) /  fabs(omega * r)<< "Omega" << omega << "Vx:"<< Vx;
        
        //std::cout << "Vb:" << (((Vx - omega * r) /  fabs(omega * r)) +1 ) *17 << std::endl;
        return (Vx - omega * r) /  fabs(omega * r) ; // absolute value of (omega*r)
    }    
        
    else
        return 0.0;
}

/**
 * Calculate slip in y direction
 * @param Vy Body y velocity
 * @param omega Wheel speed                                     
 * @return
 */
double CarDynamics::ySlip(double Vy, double omega, double r)
{
    if (omega * r != 0.0)
    {   //std::cout<< "Vy:"<<Vy<<std::endl;
        //std::cout<<"omega in slip:"<< omega<<std::endl; 
        return Vy / fabs(omega * r);

    }
    else
    {   std::cout<<"omega *r=0"<<std::endl;  
        return 0.0;  // 1.0;
        
    }
}

/**
 * Calculate friction coefficients for the front and rear wheels
 */
void CarDynamics::calcFrictionCoeffs(void)
{   //left front
    double s_FLx = xSlip(V_FLX, state.omegaFL, param.rF);
    double s_FLy = ySlip(V_FLY, state.omegaFL, param.rF);
    double s_FL = CarDynamics::norm(s_FLx, s_FLy);
    // left rear
    double s_RLx = xSlip(V_RLX, state.omegaRL, param.rR);
    double s_RLy = ySlip(V_RLY, state.omegaRL, param.rR);
    double s_RL = CarDynamics::norm(s_RLx, s_RLy);
    
    //right front
    double s_FRx = xSlip(V_FRX, state.omegaFR, param.rF);
    double s_FRy = ySlip(V_FRY, state.omegaFR, param.rF);
    double s_FR = CarDynamics::norm(s_FRx, s_FRy);    
    //right rear
    double s_RRx = xSlip(V_RRX, state.omegaRR, param.rR);
    double s_RRy = ySlip(V_RRY, state.omegaRR, param.rR);
    double s_RR = CarDynamics::norm(s_RRx, s_RRy);
    // print 4W side slip
    //std::cout<<"Slip_FLy:"<<s_FLy<< " Slip_RLy:"<<s_RLy<< " Slip_FRy:"<<s_FRy<<" Slip_RRy"<< s_RRy<< std::endl;
    //front mu!!
    if (fabs(s_FL) < TOL) // Tolerance on slipping (m/s), if difference is
///smaller than this, consider the wheels not slipping; 
    {
        mu_FLx = mu_FLy = 0.0;
    }
    else
    {
        mu_FLx = -s_FLx / s_FL * MF(s_FL);
        mu_FLy = -s_FLy / s_FL * MF(s_FL);
    }

    if (fabs(s_RL) < TOL)
    {
        mu_RLx = mu_RLy = 0.0;
    }
    else
    {
        mu_RLx = -s_RLx / s_RL * MF(s_RL);
        mu_RLy = -s_RLy / s_RL * MF(s_RL);
    }
    
    // rear mu!!
    if (fabs(s_FR) < TOL) // Tolerance on slipping (m/s), if difference is
///smaller than this, consider the wheels not slipping; 
    {
        mu_FRx = mu_FRy = 0.0;
    }
    else
    {
        mu_FRx = -s_FRx / s_FR * MF(s_FR);
        mu_FRy = -s_FRy / s_FR * MF(s_FR);
    }

    if (fabs(s_RR) < TOL)
    {
        mu_RRx = mu_RRy = 0.0;
    }
    else
    {
        mu_RRx = -s_RRx / s_RR * MF(s_RR);
        mu_RRy = -s_RRy / s_RR * MF(s_RR);
    }
    
}

/**
 * calculate the front and rear tire friction forces
 */
void CarDynamics::calcFrictionForces(double ax,double ay)
{   
    
    
    double LW = (param.lF+param.lR)*(param.wl+param.wr); //denominator of function, pg1369, eq(12);
    //normal force static
    double f_FLz0 = param.m*param.GRAVITY*param.lR*param.wr / LW; 
    double f_FRz0 = param.m*param.GRAVITY*param.lR*param.wl / LW; 
    double f_RLz0 = param.m*param.GRAVITY*param.lF*param.wr / LW;
    double f_RRz0 = param.m*param.GRAVITY*param.lF*param.wl / LW;
    //std::cout<<"f_FLz0:"<<f_FLz0<<"f_FRz0"<<f_FRz0<<"f_RLz0:"<<f_RLz0<<"f_RRz0:"<<f_RRz0<<std::endl;
    // load transfer !!!!!!!!! I just added a "-" here!!
    double df_Fy = param.m*param.h*param.lR * ay / LW; // for front wheel, load trasfer from Left -> right;
    double df_Ry = param.m*param.h*param.lF * ay / LW; // for rear wheel, load trasfer from Left -> right;
    double df_Lx = param.m*param.h*param.wr * ax / LW; // for left wheel, the load transfer from front -> left;
    double df_Rx = param.m*param.h*param.wl * ax / LW; // for right wheel, the load transfer from front -> left;
    
    //std::cout<<"ax:"<<ax<<std::endl;
    //std::cout<<"ay:"<<ay<<std::endl;
    //std::cout<<"df_LX:"<<df_Lx<<std::endl;
    //std::cout<<"df_RX:"<<df_Rx<<std::endl;
    //real dynamic normal load 
    f_FLz = f_FLz0 - df_Fy - df_Lx; 
    f_FRz = f_FRz0 + df_Fy - df_Rx;
    
    f_RLz = f_RLz0 - df_Ry + df_Lx;
    f_RRz = f_RRz0 + df_Ry + df_Rx;
     
    //double num_L = param.lR * NL - param.h * NL * mu_Rx;
    //double den_L = param.h * (mu_FLx * cos(delta) - mu_FLy * sin(delta) - mu_RLx);
    //double f_FLz = num / (param.lF + param.lR + den);
    //double f_RLz = NL - f_Fz;
    
    // check wheel off road
    if (f_FLz <= 0.0)
        std::cout<<"front left whell off ground!!!!!!!:";
    if (f_FRz <= 0.0)
        std::cout<<"front right whell off ground!!!!!!!:";    
    if (f_RLz <= 0.0 )
        std::cout<<"Rear left whell off ground!!!!!!!:";
    if (f_RRz <= 0.0 )
        std::cout<<"Rear right whell off ground!!!!!!!:";        
    
    f_FLx = f_FLz * mu_FLx;
    f_FLy = f_FLz * mu_FLy;
    
    f_FRx = f_FRz * mu_FRx;
    f_FRy = f_FRz * mu_FRy;
    
    f_RLx = f_RLz * mu_RLx;
    f_RLy = f_RLz * mu_RLy;
    
    f_RRx = f_RRz * mu_RRx;
    f_RRy = f_RRz * mu_RRy;
    
    //std::cout<<"f_FLx:"<<f_FLx<<"f_FRx"<<f_FRx<<"f_RLx:"<<f_RLx<<"f_RRx:"<<f_RRx<<std::endl;
    //f_Fx = mu_Fx * f_Fz;
    //f_Fy = mu_Fy * f_Fz;
    //f_Rx = mu_Rx * f_Rz;
    //f_Ry = mu_Ry * f_Rz;
}




/**
Added by xiaoyin, loach rk44 function

*/
std::valarray<double> CarDynamics::rk44(double t0, std::valarray<double> y0, double* a_old, double dt,
        boost::function<std::valarray<double>(double, std::valarray<double>, double*)> calc_der )
{
    std::valarray<double> k1 = dt * calc_der(t0, y0, a_old);
    std::valarray<double> k2 = dt * calc_der(t0 + 0.5 * dt, y0 + 0.5 * k1, a_old);
    std::valarray<double> k3 = dt * calc_der(t0 + 0.5 * dt, y0 + 0.5 * k2, a_old);
    std::valarray<double> k4 = dt * calc_der(t0 + dt, y0 + k3, a_old);

    std::valarray<double> y = y0 + 1.0 / 6.0 * (k1 + 2.0 * k2 + 2.0 * k3 + k4);

    return y;
}





/**
 * Integrate the system dynamics one time step
 * @param dt Time step
 */
void CarDynamics::integrateStep(double dt) // first called in carsim.cpp!!!!!
{
    std::cout<< "this is 4w!!!"<< std::endl;
    std::valarray<double> currentState(STATE_LENGTH);
    std::valarray<double> nextState(STATE_LENGTH);

    currentState[0] = state.x;
    currentState[1] = state.y;
    currentState[2] = state.Vx;
    currentState[3] = state.Vy;
    currentState[4] = state.psi;
    currentState[5] = state.dpsi;
    
    currentState[6] = state.omegaFL;
    currentState[7] = state.omegaFR;
    currentState[8] = state.omegaRL;
    currentState[9] = state.omegaRR;

    currentState[10] = state.Vxd;//Xiaoyin
    currentState[11] = state.Vyd;
    
    currentState[12] = state.f_FLx;//Xiaoyin
    currentState[13] = state.f_FLy;
    currentState[14] = state.f_FRx;    
    currentState[15] = state.f_FRy;
    
    currentState[16] = state.f_RLx;
    currentState[17] = state.f_RLy;
    currentState[18] = state.f_RRx;    
    currentState[19] = state.f_RRy;  
    
    currentState[20] = state.f_FLz;
    currentState[21] = state.f_FRz;
    currentState[22] = state.f_RLz;
    currentState[23] = state.f_RRz; 
    
    //currentState[24] = state.ax
    //currentState[25] = state.ay
//	if (fabs(state.omegaF) < 10.0)
//    	state.omegaF = 0.0;
//    if (fabs(state.omegaR) < 10.0)
//    	state.omegaR = 0.0;
    
    //std::cout<<"a_old[0]:" <<a_old[0]<<std::endl;
    //std::cout<<"a_old[1]:" <<a_old[1]<<std::endl;
    std::valarray<double> out(STATE_LENGTH);
    out = CarDynamics::dynamics(dt,currentState,  &(a_old[0]));//First call dynamics; extract vxdot, vydot here
    a_old[0] = out[2] - state.Vy * state.dpsi; //ax = Vxdot-Vy*dpsi ; a_old defined in CarDynamics.hpp
    a_old[1] = out[3] + state.Vx * state.dpsi; // Vydot + Vx*dpsi
    
    
    // run the RK4 integration step
    nextState = CarDynamics::rk44(simTime, currentState, &(a_old[0]), dt,
            boost::bind(&CarDynamics::dynamics, this, _1, _2, _3));
    simTime += dt;

    state.x = nextState[0];
    state.y = nextState[1];
    state.Vx = nextState[2];
    state.Vy = nextState[3];
    state.psi = nextState[4];
    state.dpsi = nextState[5];
    //state.old_omegaF_error= state.omegaF_error
    state.omegaFL = CarDynamics::saturate(nextState[6], param.MaxWheelSpeed,
            -param.MaxWheelSpeed);
    state.omegaFR = CarDynamics::saturate(nextState[7], param.MaxWheelSpeed,
            -param.MaxWheelSpeed);
    // Added by Xiaoyin, 4w independent
    state.omegaRL = CarDynamics::saturate(nextState[8], param.MaxWheelSpeed,
            -param.MaxWheelSpeed);
    state.omegaRR = CarDynamics::saturate(nextState[9], param.MaxWheelSpeed,
            -param.MaxWheelSpeed); 
            
    state.Vxd = a_old[0];
    state.Vyd = a_old[1];        
    
    state.f_FLx = out[12]; //Xiaoyin
    state.f_FLy = out[13];
    
    state.f_FRx = out[14];
    state.f_FRy = out[15];
    
    state.f_RLx = out[16];
    state.f_RLy = out[17];
    
    state.f_RRx = out[18]; 
    state.f_RRy = out[19]; 
    
    state.f_FLz = out[20];
    state.f_FRz = out[21];
    state.f_RLz = out[22];
    state.f_RRz = out[23];
    
    state.ax = a_old[0];
    state.ay = a_old[1];

}

double CarDynamics::wheelSpeed(double throttle, double omega, double f) // wFdot = wheelSpeed(T_F, wF, (f_Fx + f_Rx) / 2.0);
{

     double K = 0;

    // if (throttle > 0.55)
    //     K = 75 * throttle + 290;
    // else
    //     K = 3.79e3 * pow(throttle, 3) - 5.41e3 * pow(throttle, 2)
    //             + 2.66e3 * throttle - 1.29e2;
    std::cout<< "Throttle in loop:"<<throttle<<std::endl;
    //if (throttle < param.TorqueMin) //0.12
    //    K = 0;
    //else
    //    K = K / throttle;
    
        
    //double dw = K * param.BackEMFGain_up * throttle
             //- param.BackEMFGain_up * omega - (1 / param.IwR) * f * param.rR;// 0- 9* omega -f*R_w/Iwr
    double dw =0.0;
    double wdot =0.0;
    // if (omega > param.MaxWheelSpeed && dw > 0)
    //     dw = 0;

    // if (dw < 0)
    //     //dw = K * param.BackEMFGain_down * throttle
    //     //        - param.BackEMFGain_down * omega - 1 / param.IwR * f * param.rR;// 0-1.4 * omega -f * R_w/I_wr
    if (throttle>0.001)
    {           
        wdot =  (throttle* param.TorqueMax - f * param.rR) / param.IwR; // I * wdot = torque - f*r_w; param.TorqueMax =10
        dw = wdot * 1/200.0;
        //wdot = dw/dt;  dw= wdot * dt; dt =1/200 
        // dw = 16+-
    }
    else
    {//negative torque brake
        //std::cout<< "zero throttle"<< std::endl;
        
        wdot = ( - f * param.rR * 1.8) / param.IwR; // param.TorqueMin =-10
        dw = wdot *1/200.0;
    }
    
    
    
    //std::cout<<"wdot by Torueq:"<< wdot << std::endl;
    //std::cout<<"dw by Torueq:"<< dw << std::endl;
    return dw * 200.0;
}

/**
 * System dynamics
 * @param dt Time step
 * @param s State
 * @return Derivative of state
 */
std::valarray<double> CarDynamics::dynamics(double dt, std::valarray<double> s, double* a_old)
{

    // double x  = s[0];
    // double y  = s[1];
    double Vx = s[2];
    double Vy = s[3];
    double psi = s[4];
    double dpsi = s[5];
    
    double wFL = s[6];
    double wFR = s[7];
    double wRL = s[8];
    double wRR = s[9];
    //double ole_omega_err0r = s[8];
    
    double ax = a_old[0] + axy_noise(generator);
    double ay = a_old[1]+ axy_noise(generator); // acc from last step, added by Xiaoyin

    //std::cout << "4W dynamics!"; 
      
    // get tire forces
    calcVehicleComponetVelocities();
    calcFrictionCoeffs();
    calcFrictionForces(ax,ay); // ax ay as input to get load, and then get friction

    // System dynamics
    double xdot = Vx * cos(psi) - Vy * sin(psi); // inertial x
    double ydot = Vx * sin(psi) + Vy * cos(psi); // inertial y
    
    // // global ux, uy, uxdot, uydot
    // double Ux = xdot;
    // double Uy = ydot;
     
    // double Uxdot = 1 / param.m * ( f_Fx * cos(delta + psi) - f_Fy * sin(delta + psi) + f_Rx * cos(psi) - f_Ry * sin(psi) ); // global  Uxdot
    // double Uydot = 1 / param.m * ( f_Fx * sin(delta + psi) + f_Fy * cos(delta +psi) + f_Ry * cos(psi) + f_Rx * sin(psi)  );
            
    // double Vxdot =-sin(psi) * dpsi * Ux - cos(psi) * dpsi * Uy + cos(psi) * Uxdot - sin(psi) * Uydot ;
    // double Vydot = cos(psi) * dpsi * Ux - sin(psi) * dpsi * Uy + sin(psi) * Uxdot + cos(psi) * Uydot ;
    
    //
    //double Vxdot = 1 / param.m
    //         * (param.m * Vy * dpsi + f_Fx * cos(delta) - f_Fy * sin(delta)
    //                + f_Rx) + velocity_noise(generator); // body x velocity
    //double Vydot = 1 / param.m
    //         * (-param.m * Vx * dpsi + f_Fx * sin(delta) + f_Fy * cos(delta)
    //                 + f_Ry) + velocity_noise(generator); // body y velocity ; old vx & vy
                     
    double Vxdot = 1 / param.m
             * (param.m * Vy * dpsi + (f_FLx+f_FRx) * cos(delta) - (f_FLy+f_FRy) * sin(delta)
                    + (f_RLx+f_RRx) ) + velocity_noise(generator); // body x velocity
    double Vydot = 1 / param.m
             * (-param.m * Vx * dpsi + (f_FLx+f_FRx) * sin(delta) + (f_FLy+f_FRy) * cos(delta)
                     + (f_RLy+f_RRy) ) + velocity_noise(generator);                  
    
    //std::cout<<"Vxdot:"<<Vxdot<<std::endl;
    //std::cout<<"Vydot:"<<Vydot<<std::endl;
                     
    double psidot = dpsi; // yaw
    double dpsidot = 1 / param.Iz
            * (  ( (f_FLy+f_FRy) * cos(delta) + (f_FLx+f_FRx) * sin(delta)  ) * param.lF
                    - (f_RLy+f_RRy) * param.lR  ) + dpsi_noise(generator); // yaw rate
    
    double wFLdot, wFRdot, wRLdot, wRRdot;
    if (commandWheelSpeed)
    {   //front wheels
        if (omegaDes > wFL)
            wFLdot = param.omegaCLup_a * omegaDes - param.omegaCLup_b * wFL;
        else
            wFLdot = param.omegaCLdown_a * omegaDes - param.omegaCLdown_b * wFL;
        if (omegaDes > wFR)
            wFRdot = param.omegaCLup_a * omegaDes - param.omegaCLup_b * wFR;
        else
            wFRdot = param.omegaCLdown_a * omegaDes - param.omegaCLdown_b * wFR; // 4.45 * (OME_DES- omg)  
            
        //rear wheels
        if (omegaDes > wRL)
            wRLdot = param.omegaCLup_a * omegaDes - param.omegaCLup_b * wRL;
        else
            wRLdot = param.omegaCLdown_a * omegaDes - param.omegaCLdown_b * wRL;
        if (omegaDes > wRR)
            wRRdot = param.omegaCLup_a * omegaDes - param.omegaCLup_b * wFR;
        else
            wRRdot = param.omegaCLdown_a * omegaDes - param.omegaCLdown_b * wRR; // 4.45 * (OME_DES- omg)  
   
        //get

        //wFdot -= 0.3 * fabs(delta);  // WTF???!!!
        //wRdot -= 0.3 * fabs(delta);

        //std::cout<<"dw by wheel speed control:"<< wFdot << std::endl;
    }
    else
    {   // jst for Torque command control

        // enforce that wF and wR are the same (like physical drift car), Mark. Not for my car !
        wFLdot = wheelSpeed(T_FL, wFL, (f_FLx+f_RLx)/2.0);
        wFRdot = wheelSpeed(T_FR, wFR, (f_FRx+f_RRx)/2.0);
        
        wRLdot = wheelSpeed(T_RL, wRL, (f_RLx+f_FLx)/2.0);
        wRRdot = wheelSpeed(T_RR, wRR, (f_RRx+f_FRx)/2.0);
    }

    wFLdot += omega_noise(generator);
    wFRdot += omega_noise(generator);
    wRLdot += omega_noise(generator);
    wRRdot += omega_noise(generator);
    //std::cout<<"dw by wheel speed control:"<< wFdot << std::endl;

    std::valarray<double> out(STATE_LENGTH);
    out[0] = xdot;
    out[1] = ydot;
    out[2] = Vxdot;
    out[3] = Vydot;
    out[4] = psidot;
    out[5] = dpsidot;
    out[6] = wFLdot;
    out[7] = wFRdot;
    out[8] = wRLdot;
    out[9] = wRRdot;
    
    out[10] = 0.0;
    out[11] = 0.0; //added by Xiaoyin
    
    out[12] = f_FLx;// Xiaoyin
    out[13] = f_FLy;
    
    out[14] = f_FRx;
    out[15] = f_FRy;
    
    out[16] = f_RLx;
    out[17] = f_RLy;
    
    out[18] = f_RRx;
    out[19] = f_RRy;
    
    out[20] = f_FLz;
    out[21] = f_FRz;
    out[22] = f_RLz;
    out[23] = f_RRz;
    return out;
}

} /* namespace acl */
