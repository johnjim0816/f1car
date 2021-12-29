;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadAHRS)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadAHRS (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADAHRS")
  (make-package "ACL_MSGS::QUADAHRS"))

(in-package "ROS")
;;//! \htmlinclude QuadAHRS.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadAHRS
  :super ros::object
  :slots (_header _att _att_meas _rpy _rpy_meas ))

(defmethod acl_msgs::QuadAHRS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:att __att) (instance geometry_msgs::Quaternion :init))
    ((:att_meas __att_meas) (instance geometry_msgs::Quaternion :init))
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    ((:rpy_meas __rpy_meas) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _att __att)
   (setq _att_meas __att_meas)
   (setq _rpy __rpy)
   (setq _rpy_meas __rpy_meas)
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
  (:att_meas
   (&rest __att_meas)
   (if (keywordp (car __att_meas))
       (send* _att_meas __att_meas)
     (progn
       (if __att_meas (setq _att_meas (car __att_meas)))
       _att_meas)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:rpy_meas
   (&rest __rpy_meas)
   (if (keywordp (car __rpy_meas))
       (send* _rpy_meas __rpy_meas)
     (progn
       (if __rpy_meas (setq _rpy_meas (car __rpy_meas)))
       _rpy_meas)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _att
    (send _att :serialization-length)
    ;; geometry_msgs/Quaternion _att_meas
    (send _att_meas :serialization-length)
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Vector3 _rpy_meas
    (send _rpy_meas :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _att
       (send _att :serialize s)
     ;; geometry_msgs/Quaternion _att_meas
       (send _att_meas :serialize s)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Vector3 _rpy_meas
       (send _rpy_meas :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _att
     (send _att :deserialize buf ptr-) (incf ptr- (send _att :serialization-length))
   ;; geometry_msgs/Quaternion _att_meas
     (send _att_meas :deserialize buf ptr-) (incf ptr- (send _att_meas :serialization-length))
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Vector3 _rpy_meas
     (send _rpy_meas :deserialize buf ptr-) (incf ptr- (send _rpy_meas :serialization-length))
   ;;
   self)
  )

(setf (get acl_msgs::QuadAHRS :md5sum-) "9f4a3386f9afc8a5354d3ad861314b66")
(setf (get acl_msgs::QuadAHRS :datatype-) "acl_msgs/QuadAHRS")
(setf (get acl_msgs::QuadAHRS :definition-)
      "Header header
geometry_msgs/Quaternion att
geometry_msgs/Quaternion att_meas
geometry_msgs/Vector3 rpy
geometry_msgs/Vector3 rpy_meas


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



(provide :acl_msgs/QuadAHRS "9f4a3386f9afc8a5354d3ad861314b66")


