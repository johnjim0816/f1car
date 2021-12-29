;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadGoal)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadGoal (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADGOAL")
  (make-package "ACL_MSGS::QUADGOAL"))

(in-package "ROS")
;;//! \htmlinclude QuadGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_POS*" (find-package "ACL_MSGS::QUADGOAL"))
(shadow '*MODE_POS* (find-package "ACL_MSGS::QUADGOAL"))
(defconstant acl_msgs::QuadGoal::*MODE_POS* 0)
(intern "*MODE_VEL*" (find-package "ACL_MSGS::QUADGOAL"))
(shadow '*MODE_VEL* (find-package "ACL_MSGS::QUADGOAL"))
(defconstant acl_msgs::QuadGoal::*MODE_VEL* 1)
(intern "*MODE_ACCEL*" (find-package "ACL_MSGS::QUADGOAL"))
(shadow '*MODE_ACCEL* (find-package "ACL_MSGS::QUADGOAL"))
(defconstant acl_msgs::QuadGoal::*MODE_ACCEL* 2)

(defun acl_msgs::QuadGoal-to-symbol (const)
  (cond
        ((= const 0) 'acl_msgs::QuadGoal::*MODE_POS*)
        ((= const 1) 'acl_msgs::QuadGoal::*MODE_VEL*)
        ((= const 2) 'acl_msgs::QuadGoal::*MODE_ACCEL*)
        (t nil)))

(defclass acl_msgs::QuadGoal
  :super ros::object
  :slots (_header _pos _vel _accel _jerk _yaw _dyaw _cut_power _reset_xy_int _reset_z_int _xy_mode _z_mode ))

(defmethod acl_msgs::QuadGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos __pos) (instance geometry_msgs::Vector3 :init))
    ((:vel __vel) (instance geometry_msgs::Vector3 :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:yaw __yaw) 0.0)
    ((:dyaw __dyaw) 0.0)
    ((:cut_power __cut_power) nil)
    ((:reset_xy_int __reset_xy_int) nil)
    ((:reset_z_int __reset_z_int) nil)
    ((:xy_mode __xy_mode) 0)
    ((:z_mode __z_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos __pos)
   (setq _vel __vel)
   (setq _accel __accel)
   (setq _jerk __jerk)
   (setq _yaw (float __yaw))
   (setq _dyaw (float __dyaw))
   (setq _cut_power __cut_power)
   (setq _reset_xy_int __reset_xy_int)
   (setq _reset_z_int __reset_z_int)
   (setq _xy_mode (round __xy_mode))
   (setq _z_mode (round __z_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:dyaw
   (&optional __dyaw)
   (if __dyaw (setq _dyaw __dyaw)) _dyaw)
  (:cut_power
   (&optional (__cut_power :null))
   (if (not (eq __cut_power :null)) (setq _cut_power __cut_power)) _cut_power)
  (:reset_xy_int
   (&optional (__reset_xy_int :null))
   (if (not (eq __reset_xy_int :null)) (setq _reset_xy_int __reset_xy_int)) _reset_xy_int)
  (:reset_z_int
   (&optional (__reset_z_int :null))
   (if (not (eq __reset_z_int :null)) (setq _reset_z_int __reset_z_int)) _reset_z_int)
  (:xy_mode
   (&optional __xy_mode)
   (if __xy_mode (setq _xy_mode __xy_mode)) _xy_mode)
  (:z_mode
   (&optional __z_mode)
   (if __z_mode (setq _z_mode __z_mode)) _z_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Vector3 _vel
    (send _vel :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _dyaw
    8
    ;; bool _cut_power
    1
    ;; bool _reset_xy_int
    1
    ;; bool _reset_z_int
    1
    ;; int8 _xy_mode
    1
    ;; int8 _z_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Vector3 _vel
       (send _vel :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dyaw
       (sys::poke _dyaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _cut_power
       (if _cut_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_xy_int
       (if _reset_xy_int (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_z_int
       (if _reset_z_int (write-byte -1 s) (write-byte 0 s))
     ;; int8 _xy_mode
       (write-byte _xy_mode s)
     ;; int8 _z_mode
       (write-byte _z_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Vector3 _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dyaw
     (setq _dyaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _cut_power
     (setq _cut_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_xy_int
     (setq _reset_xy_int (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_z_int
     (setq _reset_z_int (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _xy_mode
     (setq _xy_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _xy_mode 127) (setq _xy_mode (- _xy_mode 256)))
   ;; int8 _z_mode
     (setq _z_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _z_mode 127) (setq _z_mode (- _z_mode 256)))
   ;;
   self)
  )

(setf (get acl_msgs::QuadGoal :md5sum-) "950d02887809b520e2711856716b3af3")
(setf (get acl_msgs::QuadGoal :datatype-) "acl_msgs/QuadGoal")
(setf (get acl_msgs::QuadGoal :definition-)
      "Header header
geometry_msgs/Vector3 pos
geometry_msgs/Vector3 vel
geometry_msgs/Vector3 accel
geometry_msgs/Vector3 jerk
float64 yaw
float64 dyaw
bool cut_power
bool reset_xy_int
bool reset_z_int
int8 xy_mode
int8 z_mode
int8 MODE_POS=0
int8 MODE_VEL=1
int8 MODE_ACCEL=2

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



(provide :acl_msgs/QuadGoal "950d02887809b520e2711856716b3af3")


