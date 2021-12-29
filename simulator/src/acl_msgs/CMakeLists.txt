cmake_minimum_required(VERSION 2.8.3)
project(acl_msgs)
find_package(catkin REQUIRED COMPONENTS 
  roscpp
  rospy
  rosbag
  roslib
  message_generation 
  std_msgs 
  geometry_msgs
  nav_msgs
  std_srvs
  actionlib_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  Latency.msg
  FloatStamped.msg
  GPparams.msg
  ImageObj.msg
  ImageRect.msg
  IMU.msg
  JoyDef.msg
  QuadCntrl.msg
  QuadGoal.msg
  QuadHealth.msg 
  QuadAHRS.msg
  QuadAttCmd.msg
  HexCantedAttCmd.msg
  QuadPath.msg
  QuadPathArray.msg
  QuadRawSensors.msg
  QuadState.msg
  QuadMotors.msg
  Motors.msg
  QuadFlightMode.msg
  MissionMode.msg
  TermGoal.msg
  Waypoint.msg
  State.msg
  SMCData.msg
  HexData.msg
  Trajectory.msg
  CarGoal.msg
  CarCmd.msg
  PolyInputs.msg
  SimpleState.msg
  CarState.msg
  VehicleList.msg
  CommAge.msg
  QuadMode.msg
  ViconState.msg
  QuadWaypoint.msg
  QuadWaypointError.msg
  QuadWaypointQueueComplete.msg
  ClassifierFeature.msg
  ClassifierProbabilities.msg
  BoolStamped.msg
  ClassifierFeature.msg
  LocalizerTrigger.msg
  Cvx.msg
  )

  ## Generate services in the 'srv' folder
add_service_files(
  FILES
  GenPath.srv
  GenSimplePath.srv
  MultiVehPreCompute.srv
  MultiVehTakeoffLand.srv
  MultiVehWaypoint.srv
  OLcmd.srv
  ResetCar.srv
  ReturnToBase.srv
  SingleSegment.srv
  SingleTrack.srv
  RunStep.srv
  PilcoRollout.srv
)

## Generate actions in the 'action' folder
add_action_files(
  FILES
  BroadcastTrajectory.action
  Return2Start.action
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs nav_msgs actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs nav_msgs actionlib_msgs std_srvs)

