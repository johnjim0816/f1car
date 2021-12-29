;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadRawSensors)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadRawSensors (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADRAWSENSORS")
  (make-package "ACL_MSGS::QUADRAWSENSORS"))

(in-package "ROS")
;;//! \htmlinclude QuadRawSensors.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadRawSensors
  :super ros::object
  :slots (_header _received_seq _gyro _accel _accel_f _mag _pressure ))

(defmethod acl_msgs::QuadRawSensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:received_seq __received_seq) 0)
    ((:gyro __gyro) (instance geometry_msgs::Vector3 :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:accel_f __accel_f) (instance geometry_msgs::Vector3 :init))
    ((:mag __mag) (instance geometry_msgs::Vector3 :init))
    ((:pressure __pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _received_seq (round __received_seq))
   (setq _gyro __gyro)
   (setq _accel __accel)
   (setq _accel_f __accel_f)
   (setq _mag __mag)
   (setq _pressure (float __pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:received_seq
   (&optional __received_seq)
   (if __received_seq (setq _received_seq __received_seq)) _received_seq)
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:accel_f
   (&rest __accel_f)
   (if (keywordp (car __accel_f))
       (send* _accel_f __accel_f)
     (progn
       (if __accel_f (setq _accel_f (car __accel_f)))
       _accel_f)))
  (:mag
   (&rest __mag)
   (if (keywordp (car __mag))
       (send* _mag __mag)
     (progn
       (if __mag (setq _mag (car __mag)))
       _mag)))
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _received_seq
    1
    ;; geometry_msgs/Vector3 _gyro
    (send _gyro :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Vector3 _accel_f
    (send _accel_f :serialization-length)
    ;; geometry_msgs/Vector3 _mag
    (send _mag :serialization-length)
    ;; float64 _pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _received_seq
       (write-byte _received_seq s)
     ;; geometry_msgs/Vector3 _gyro
       (send _gyro :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Vector3 _accel_f
       (send _accel_f :serialize s)
     ;; geometry_msgs/Vector3 _mag
       (send _mag :serialize s)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _received_seq
     (setq _received_seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Vector3 _accel_f
     (send _accel_f :deserialize buf ptr-) (incf ptr- (send _accel_f :serialization-length))
   ;; geometry_msgs/Vector3 _mag
     (send _mag :deserialize buf ptr-) (incf ptr- (send _mag :serialization-length))
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get acl_msgs::QuadRawSensors :md5sum-) "576df60f63a0e261ad4b0bad7d28d5b7")
(setf (get acl_msgs::QuadRawSensors :datatype-) "acl_msgs/QuadRawSensors")
(setf (get acl_msgs::QuadRawSensors :definition-)
      "Header header
uint8 received_seq
geometry_msgs/Vector3 gyro
geometry_msgs/Vector3 accel
geometry_msgs/Vector3 accel_f
geometry_msgs/Vector3 mag
float64 pressure

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



(provide :acl_msgs/QuadRawSensors "576df60f63a0e261ad4b0bad7d28d5b7")


