;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadCntrl)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadCntrl (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADCNTRL")
  (make-package "ACL_MSGS::QUADCNTRL"))

(in-package "ROS")
;;//! \htmlinclude QuadCntrl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadCntrl
  :super ros::object
  :slots (_header _pose _pose_actual _twist _twist_actual _rpy _rpy_actual _accel _accel_fb _jerk _jerk_fb _pos_integrator _vel_integrator _s _c _phi _phi_m _u _a _b _yaw _f_total _throttle _att_status _vicon_time ))

(defmethod acl_msgs::QuadCntrl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:pose_actual __pose_actual) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:twist_actual __twist_actual) (instance geometry_msgs::Twist :init))
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    ((:rpy_actual __rpy_actual) (instance geometry_msgs::Vector3 :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:accel_fb __accel_fb) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:jerk_fb __jerk_fb) (instance geometry_msgs::Vector3 :init))
    ((:pos_integrator __pos_integrator) (instance geometry_msgs::Vector3 :init))
    ((:vel_integrator __vel_integrator) (instance geometry_msgs::Vector3 :init))
    ((:s __s) (instance geometry_msgs::Vector3 :init))
    ((:c __c) (instance geometry_msgs::Vector3 :init))
    ((:phi __phi) (instance geometry_msgs::Vector3 :init))
    ((:phi_m __phi_m) (instance geometry_msgs::Vector3 :init))
    ((:u __u) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:yaw __yaw) 0.0)
    ((:f_total __f_total) 0.0)
    ((:throttle __throttle) 0.0)
    ((:att_status __att_status) 0)
    ((:vicon_time __vicon_time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _pose_actual __pose_actual)
   (setq _twist __twist)
   (setq _twist_actual __twist_actual)
   (setq _rpy __rpy)
   (setq _rpy_actual __rpy_actual)
   (setq _accel __accel)
   (setq _accel_fb __accel_fb)
   (setq _jerk __jerk)
   (setq _jerk_fb __jerk_fb)
   (setq _pos_integrator __pos_integrator)
   (setq _vel_integrator __vel_integrator)
   (setq _s __s)
   (setq _c __c)
   (setq _phi __phi)
   (setq _phi_m __phi_m)
   (setq _u (float __u))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _yaw (float __yaw))
   (setq _f_total (float __f_total))
   (setq _throttle (float __throttle))
   (setq _att_status (round __att_status))
   (setq _vicon_time (float __vicon_time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pose_actual
   (&rest __pose_actual)
   (if (keywordp (car __pose_actual))
       (send* _pose_actual __pose_actual)
     (progn
       (if __pose_actual (setq _pose_actual (car __pose_actual)))
       _pose_actual)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:twist_actual
   (&rest __twist_actual)
   (if (keywordp (car __twist_actual))
       (send* _twist_actual __twist_actual)
     (progn
       (if __twist_actual (setq _twist_actual (car __twist_actual)))
       _twist_actual)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:rpy_actual
   (&rest __rpy_actual)
   (if (keywordp (car __rpy_actual))
       (send* _rpy_actual __rpy_actual)
     (progn
       (if __rpy_actual (setq _rpy_actual (car __rpy_actual)))
       _rpy_actual)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:accel_fb
   (&rest __accel_fb)
   (if (keywordp (car __accel_fb))
       (send* _accel_fb __accel_fb)
     (progn
       (if __accel_fb (setq _accel_fb (car __accel_fb)))
       _accel_fb)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:jerk_fb
   (&rest __jerk_fb)
   (if (keywordp (car __jerk_fb))
       (send* _jerk_fb __jerk_fb)
     (progn
       (if __jerk_fb (setq _jerk_fb (car __jerk_fb)))
       _jerk_fb)))
  (:pos_integrator
   (&rest __pos_integrator)
   (if (keywordp (car __pos_integrator))
       (send* _pos_integrator __pos_integrator)
     (progn
       (if __pos_integrator (setq _pos_integrator (car __pos_integrator)))
       _pos_integrator)))
  (:vel_integrator
   (&rest __vel_integrator)
   (if (keywordp (car __vel_integrator))
       (send* _vel_integrator __vel_integrator)
     (progn
       (if __vel_integrator (setq _vel_integrator (car __vel_integrator)))
       _vel_integrator)))
  (:s
   (&rest __s)
   (if (keywordp (car __s))
       (send* _s __s)
     (progn
       (if __s (setq _s (car __s)))
       _s)))
  (:c
   (&rest __c)
   (if (keywordp (car __c))
       (send* _c __c)
     (progn
       (if __c (setq _c (car __c)))
       _c)))
  (:phi
   (&rest __phi)
   (if (keywordp (car __phi))
       (send* _phi __phi)
     (progn
       (if __phi (setq _phi (car __phi)))
       _phi)))
  (:phi_m
   (&rest __phi_m)
   (if (keywordp (car __phi_m))
       (send* _phi_m __phi_m)
     (progn
       (if __phi_m (setq _phi_m (car __phi_m)))
       _phi_m)))
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:f_total
   (&optional __f_total)
   (if __f_total (setq _f_total __f_total)) _f_total)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:att_status
   (&optional __att_status)
   (if __att_status (setq _att_status __att_status)) _att_status)
  (:vicon_time
   (&optional __vicon_time)
   (if __vicon_time (setq _vicon_time __vicon_time)) _vicon_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _pose_actual
    (send _pose_actual :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Twist _twist_actual
    (send _twist_actual :serialization-length)
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Vector3 _rpy_actual
    (send _rpy_actual :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Vector3 _accel_fb
    (send _accel_fb :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; geometry_msgs/Vector3 _jerk_fb
    (send _jerk_fb :serialization-length)
    ;; geometry_msgs/Vector3 _pos_integrator
    (send _pos_integrator :serialization-length)
    ;; geometry_msgs/Vector3 _vel_integrator
    (send _vel_integrator :serialization-length)
    ;; geometry_msgs/Vector3 _s
    (send _s :serialization-length)
    ;; geometry_msgs/Vector3 _c
    (send _c :serialization-length)
    ;; geometry_msgs/Vector3 _phi
    (send _phi :serialization-length)
    ;; geometry_msgs/Vector3 _phi_m
    (send _phi_m :serialization-length)
    ;; float64 _u
    8
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _yaw
    8
    ;; float64 _f_total
    8
    ;; float64 _throttle
    8
    ;; int16 _att_status
    2
    ;; float64 _vicon_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _pose_actual
       (send _pose_actual :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Twist _twist_actual
       (send _twist_actual :serialize s)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Vector3 _rpy_actual
       (send _rpy_actual :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Vector3 _accel_fb
       (send _accel_fb :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; geometry_msgs/Vector3 _jerk_fb
       (send _jerk_fb :serialize s)
     ;; geometry_msgs/Vector3 _pos_integrator
       (send _pos_integrator :serialize s)
     ;; geometry_msgs/Vector3 _vel_integrator
       (send _vel_integrator :serialize s)
     ;; geometry_msgs/Vector3 _s
       (send _s :serialize s)
     ;; geometry_msgs/Vector3 _c
       (send _c :serialize s)
     ;; geometry_msgs/Vector3 _phi
       (send _phi :serialize s)
     ;; geometry_msgs/Vector3 _phi_m
       (send _phi_m :serialize s)
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_total
       (sys::poke _f_total (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _att_status
       (write-word _att_status s)
     ;; float64 _vicon_time
       (sys::poke _vicon_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _pose_actual
     (send _pose_actual :deserialize buf ptr-) (incf ptr- (send _pose_actual :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Twist _twist_actual
     (send _twist_actual :deserialize buf ptr-) (incf ptr- (send _twist_actual :serialization-length))
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Vector3 _rpy_actual
     (send _rpy_actual :deserialize buf ptr-) (incf ptr- (send _rpy_actual :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Vector3 _accel_fb
     (send _accel_fb :deserialize buf ptr-) (incf ptr- (send _accel_fb :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; geometry_msgs/Vector3 _jerk_fb
     (send _jerk_fb :deserialize buf ptr-) (incf ptr- (send _jerk_fb :serialization-length))
   ;; geometry_msgs/Vector3 _pos_integrator
     (send _pos_integrator :deserialize buf ptr-) (incf ptr- (send _pos_integrator :serialization-length))
   ;; geometry_msgs/Vector3 _vel_integrator
     (send _vel_integrator :deserialize buf ptr-) (incf ptr- (send _vel_integrator :serialization-length))
   ;; geometry_msgs/Vector3 _s
     (send _s :deserialize buf ptr-) (incf ptr- (send _s :serialization-length))
   ;; geometry_msgs/Vector3 _c
     (send _c :deserialize buf ptr-) (incf ptr- (send _c :serialization-length))
   ;; geometry_msgs/Vector3 _phi
     (send _phi :deserialize buf ptr-) (incf ptr- (send _phi :serialization-length))
   ;; geometry_msgs/Vector3 _phi_m
     (send _phi_m :deserialize buf ptr-) (incf ptr- (send _phi_m :serialization-length))
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_total
     (setq _f_total (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _att_status
     (setq _att_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _vicon_time
     (setq _vicon_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get acl_msgs::QuadCntrl :md5sum-) "73822b1fb2aea2756d0f5f88004413c3")
(setf (get acl_msgs::QuadCntrl :datatype-) "acl_msgs/QuadCntrl")
(setf (get acl_msgs::QuadCntrl :definition-)
      "Header header
geometry_msgs/Pose pose
geometry_msgs/Pose pose_actual
geometry_msgs/Twist twist
geometry_msgs/Twist twist_actual
geometry_msgs/Vector3 rpy
geometry_msgs/Vector3 rpy_actual
geometry_msgs/Vector3 accel
geometry_msgs/Vector3 accel_fb
geometry_msgs/Vector3 jerk
geometry_msgs/Vector3 jerk_fb
geometry_msgs/Vector3 pos_integrator
geometry_msgs/Vector3 vel_integrator
geometry_msgs/Vector3 s
geometry_msgs/Vector3 c
geometry_msgs/Vector3 phi
geometry_msgs/Vector3 phi_m
float64 u
float64 a
float64 b
float64 yaw
float64 f_total
float64 throttle
int16 att_status
float64 vicon_time

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :acl_msgs/QuadCntrl "73822b1fb2aea2756d0f5f88004413c3")


