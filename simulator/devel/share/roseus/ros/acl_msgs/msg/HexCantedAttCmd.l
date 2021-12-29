;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::HexCantedAttCmd)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'HexCantedAttCmd (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::HEXCANTEDATTCMD")
  (make-package "ACL_MSGS::HEXCANTEDATTCMD"))

(in-package "ROS")
;;//! \htmlinclude HexCantedAttCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::HexCantedAttCmd
  :super ros::object
  :slots (_header _att _rate _Fx _Fy _Fz _att_status ))

(defmethod acl_msgs::HexCantedAttCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:att __att) (instance geometry_msgs::Quaternion :init))
    ((:rate __rate) (instance geometry_msgs::Vector3 :init))
    ((:Fx __Fx) 0.0)
    ((:Fy __Fy) 0.0)
    ((:Fz __Fz) 0.0)
    ((:att_status __att_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _att __att)
   (setq _rate __rate)
   (setq _Fx (float __Fx))
   (setq _Fy (float __Fy))
   (setq _Fz (float __Fz))
   (setq _att_status (round __att_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:att
   (&rest __att)
   (if (keywordp (car __att))
       (send* _att __att)
     (progn
       (if __att (setq _att (car __att)))
       _att)))
  (:rate
   (&rest __rate)
   (if (keywordp (car __rate))
       (send* _rate __rate)
     (progn
       (if __rate (setq _rate (car __rate)))
       _rate)))
  (:Fx
   (&optional __Fx)
   (if __Fx (setq _Fx __Fx)) _Fx)
  (:Fy
   (&optional __Fy)
   (if __Fy (setq _Fy __Fy)) _Fy)
  (:Fz
   (&optional __Fz)
   (if __Fz (setq _Fz __Fz)) _Fz)
  (:att_status
   (&optional __att_status)
   (if __att_status (setq _att_status __att_status)) _att_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _att
    (send _att :serialization-length)
    ;; geometry_msgs/Vector3 _rate
    (send _rate :serialization-length)
    ;; float64 _Fx
    8
    ;; float64 _Fy
    8
    ;; float64 _Fz
    8
    ;; int16 _att_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _att
       (send _att :serialize s)
     ;; geometry_msgs/Vector3 _rate
       (send _rate :serialize s)
     ;; float64 _Fx
       (sys::poke _Fx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Fy
       (sys::poke _Fy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Fz
       (sys::poke _Fz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _att_status
       (write-word _att_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _att
     (send _att :deserialize buf ptr-) (incf ptr- (send _att :serialization-length))
   ;; geometry_msgs/Vector3 _rate
     (send _rate :deserialize buf ptr-) (incf ptr- (send _rate :serialization-length))
   ;; float64 _Fx
     (setq _Fx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Fy
     (setq _Fy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Fz
     (setq _Fz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _att_status
     (setq _att_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get acl_msgs::HexCantedAttCmd :md5sum-) "a9629a5b57e06fabbc9c670074808160")
(setf (get acl_msgs::HexCantedAttCmd :datatype-) "acl_msgs/HexCantedAttCmd")
(setf (get acl_msgs::HexCantedAttCmd :definition-)
      "Header header
geometry_msgs/Quaternion att
geometry_msgs/Vector3 rate
float64 Fx
float64 Fy
float64 Fz
int16 att_status


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :acl_msgs/HexCantedAttCmd "a9629a5b57e06fabbc9c670074808160")


