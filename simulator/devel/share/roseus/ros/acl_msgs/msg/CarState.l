;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::CarState)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'CarState (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CARSTATE")
  (make-package "ACL_MSGS::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::CarState
  :super ros::object
  :slots (_header _pose _Vx _Vy _r _omegaF _omegaR _throttle _turn _x_center _y_center _R _f_FLx _f_FLy _f_FLz _f_FRx _f_FRy _f_FRz _f_RLx _f_RLy _f_RLz _f_RRx _f_RRy _f_RRz _ax _ay ))

(defmethod acl_msgs::CarState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:Vx __Vx) 0.0)
    ((:Vy __Vy) 0.0)
    ((:r __r) 0.0)
    ((:omegaF __omegaF) 0.0)
    ((:omegaR __omegaR) 0.0)
    ((:throttle __throttle) 0.0)
    ((:turn __turn) 0.0)
    ((:x_center __x_center) 0.0)
    ((:y_center __y_center) 0.0)
    ((:R __R) 0.0)
    ((:f_FLx __f_FLx) 0.0)
    ((:f_FLy __f_FLy) 0.0)
    ((:f_FLz __f_FLz) 0.0)
    ((:f_FRx __f_FRx) 0.0)
    ((:f_FRy __f_FRy) 0.0)
    ((:f_FRz __f_FRz) 0.0)
    ((:f_RLx __f_RLx) 0.0)
    ((:f_RLy __f_RLy) 0.0)
    ((:f_RLz __f_RLz) 0.0)
    ((:f_RRx __f_RRx) 0.0)
    ((:f_RRy __f_RRy) 0.0)
    ((:f_RRz __f_RRz) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _Vx (float __Vx))
   (setq _Vy (float __Vy))
   (setq _r (float __r))
   (setq _omegaF (float __omegaF))
   (setq _omegaR (float __omegaR))
   (setq _throttle (float __throttle))
   (setq _turn (float __turn))
   (setq _x_center (float __x_center))
   (setq _y_center (float __y_center))
   (setq _R (float __R))
   (setq _f_FLx (float __f_FLx))
   (setq _f_FLy (float __f_FLy))
   (setq _f_FLz (float __f_FLz))
   (setq _f_FRx (float __f_FRx))
   (setq _f_FRy (float __f_FRy))
   (setq _f_FRz (float __f_FRz))
   (setq _f_RLx (float __f_RLx))
   (setq _f_RLy (float __f_RLy))
   (setq _f_RLz (float __f_RLz))
   (setq _f_RRx (float __f_RRx))
   (setq _f_RRy (float __f_RRy))
   (setq _f_RRz (float __f_RRz))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
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
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:omegaF
   (&optional __omegaF)
   (if __omegaF (setq _omegaF __omegaF)) _omegaF)
  (:omegaR
   (&optional __omegaR)
   (if __omegaR (setq _omegaR __omegaR)) _omegaR)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:turn
   (&optional __turn)
   (if __turn (setq _turn __turn)) _turn)
  (:x_center
   (&optional __x_center)
   (if __x_center (setq _x_center __x_center)) _x_center)
  (:y_center
   (&optional __y_center)
   (if __y_center (setq _y_center __y_center)) _y_center)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:f_FLx
   (&optional __f_FLx)
   (if __f_FLx (setq _f_FLx __f_FLx)) _f_FLx)
  (:f_FLy
   (&optional __f_FLy)
   (if __f_FLy (setq _f_FLy __f_FLy)) _f_FLy)
  (:f_FLz
   (&optional __f_FLz)
   (if __f_FLz (setq _f_FLz __f_FLz)) _f_FLz)
  (:f_FRx
   (&optional __f_FRx)
   (if __f_FRx (setq _f_FRx __f_FRx)) _f_FRx)
  (:f_FRy
   (&optional __f_FRy)
   (if __f_FRy (setq _f_FRy __f_FRy)) _f_FRy)
  (:f_FRz
   (&optional __f_FRz)
   (if __f_FRz (setq _f_FRz __f_FRz)) _f_FRz)
  (:f_RLx
   (&optional __f_RLx)
   (if __f_RLx (setq _f_RLx __f_RLx)) _f_RLx)
  (:f_RLy
   (&optional __f_RLy)
   (if __f_RLy (setq _f_RLy __f_RLy)) _f_RLy)
  (:f_RLz
   (&optional __f_RLz)
   (if __f_RLz (setq _f_RLz __f_RLz)) _f_RLz)
  (:f_RRx
   (&optional __f_RRx)
   (if __f_RRx (setq _f_RRx __f_RRx)) _f_RRx)
  (:f_RRy
   (&optional __f_RRy)
   (if __f_RRy (setq _f_RRy __f_RRy)) _f_RRy)
  (:f_RRz
   (&optional __f_RRz)
   (if __f_RRz (setq _f_RRz __f_RRz)) _f_RRz)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _Vx
    8
    ;; float64 _Vy
    8
    ;; float64 _r
    8
    ;; float64 _omegaF
    8
    ;; float64 _omegaR
    8
    ;; float64 _throttle
    8
    ;; float64 _turn
    8
    ;; float64 _x_center
    8
    ;; float64 _y_center
    8
    ;; float64 _R
    8
    ;; float64 _f_FLx
    8
    ;; float64 _f_FLy
    8
    ;; float64 _f_FLz
    8
    ;; float64 _f_FRx
    8
    ;; float64 _f_FRy
    8
    ;; float64 _f_FRz
    8
    ;; float64 _f_RLx
    8
    ;; float64 _f_RLy
    8
    ;; float64 _f_RLz
    8
    ;; float64 _f_RRx
    8
    ;; float64 _f_RRy
    8
    ;; float64 _f_RRz
    8
    ;; float64 _ax
    8
    ;; float64 _ay
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
     ;; float64 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Vy
       (sys::poke _Vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegaF
       (sys::poke _omegaF (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegaR
       (sys::poke _omegaR (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _turn
       (sys::poke _turn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_center
       (sys::poke _x_center (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_center
       (sys::poke _y_center (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R
       (sys::poke _R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FLx
       (sys::poke _f_FLx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FLy
       (sys::poke _f_FLy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FLz
       (sys::poke _f_FLz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FRx
       (sys::poke _f_FRx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FRy
       (sys::poke _f_FRy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_FRz
       (sys::poke _f_FRz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RLx
       (sys::poke _f_RLx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RLy
       (sys::poke _f_RLy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RLz
       (sys::poke _f_RLz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RRx
       (sys::poke _f_RRx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RRy
       (sys::poke _f_RRy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_RRz
       (sys::poke _f_RRz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _Vx
     (setq _Vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Vy
     (setq _Vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegaF
     (setq _omegaF (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegaR
     (setq _omegaR (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _turn
     (setq _turn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_center
     (setq _x_center (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_center
     (setq _y_center (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R
     (setq _R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FLx
     (setq _f_FLx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FLy
     (setq _f_FLy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FLz
     (setq _f_FLz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FRx
     (setq _f_FRx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FRy
     (setq _f_FRy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_FRz
     (setq _f_FRz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RLx
     (setq _f_RLx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RLy
     (setq _f_RLy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RLz
     (setq _f_RLz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RRx
     (setq _f_RRx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RRy
     (setq _f_RRy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_RRz
     (setq _f_RRz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get acl_msgs::CarState :md5sum-) "24e7939ba4db72b0c2b93d5f9545e13b")
(setf (get acl_msgs::CarState :datatype-) "acl_msgs/CarState")
(setf (get acl_msgs::CarState :definition-)
      "Header header
geometry_msgs/Pose pose
float64 Vx
float64 Vy
float64 r
float64 omegaF
float64 omegaR
float64 throttle
float64 turn
float64 x_center
float64 y_center
float64 R
float64 f_FLx
float64 f_FLy
float64 f_FLz
float64 f_FRx
float64 f_FRy
float64 f_FRz
float64 f_RLx
float64 f_RLy
float64 f_RLz
float64 f_RRx
float64 f_RRy
float64 f_RRz
float64 ax
float64 ay

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



(provide :acl_msgs/CarState "24e7939ba4db72b0c2b93d5f9545e13b")


