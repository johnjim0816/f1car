;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::Waypoint)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'Waypoint (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::WAYPOINT")
  (make-package "ACL_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::Waypoint
  :super ros::object
  :slots (_header _goal_pose _takeoff _land _velocity _acceleration ))

(defmethod acl_msgs::Waypoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::Pose :init))
    ((:takeoff __takeoff) nil)
    ((:land __land) nil)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_pose __goal_pose)
   (setq _takeoff __takeoff)
   (setq _land __land)
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:takeoff
   (&optional (__takeoff :null))
   (if (not (eq __takeoff :null)) (setq _takeoff __takeoff)) _takeoff)
  (:land
   (&optional (__land :null))
   (if (not (eq __land :null)) (setq _land __land)) _land)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _goal_pose
    (send _goal_pose :serialization-length)
    ;; bool _takeoff
    1
    ;; bool _land
    1
    ;; float64 _velocity
    8
    ;; float64 _acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _goal_pose
       (send _goal_pose :serialize s)
     ;; bool _takeoff
       (if _takeoff (write-byte -1 s) (write-byte 0 s))
     ;; bool _land
       (if _land (write-byte -1 s) (write-byte 0 s))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; bool _takeoff
     (setq _takeoff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _land
     (setq _land (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get acl_msgs::Waypoint :md5sum-) "56bdf59fc43e8083eb916d450d30311a")
(setf (get acl_msgs::Waypoint :datatype-) "acl_msgs/Waypoint")
(setf (get acl_msgs::Waypoint :definition-)
      "Header header
geometry_msgs/Pose goal_pose
bool takeoff
bool land
float64 velocity
float64 acceleration
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :acl_msgs/Waypoint "56bdf59fc43e8083eb916d450d30311a")


