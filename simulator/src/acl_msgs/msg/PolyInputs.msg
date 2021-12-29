# Definition of polynomial inputs for trajectory generation.

int64 n # polynomial order (n=4 -> cubic spline)
std_msgs/Float64MultiArray wp # x,y,z waypoints
std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate
std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate
std_msgs/Float64MultiArray wp_vel # intermediate velocity commands
int64[] wp_elm # waypoints at which the wp_vel should be applied
float64[] tt # time segments between waypoints (relative, not cumulative)