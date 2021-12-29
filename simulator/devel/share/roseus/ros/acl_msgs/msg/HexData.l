;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::HexData)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'HexData (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::HEXDATA")
  (make-package "ACL_MSGS::HEXDATA"))

(in-package "ROS")
;;//! \htmlinclude HexData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::HexData
  :super ros::object
  :slots (_header _m13 _m46 _FBody _MBody _XDesired ))

(defmethod acl_msgs::HexData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:m13 __m13) (instance geometry_msgs::Vector3 :init))
    ((:m46 __m46) (instance geometry_msgs::Vector3 :init))
    ((:FBody __FBody) (instance geometry_msgs::Vector3 :init))
    ((:MBody __MBody) (instance geometry_msgs::Vector3 :init))
    ((:XDesired __XDesired) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _m13 __m13)
   (setq _m46 __m46)
   (setq _FBody __FBody)
   (setq _MBody __MBody)
   (setq _XDesired __XDesired)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:m13
   (&rest __m13)
   (if (keywordp (car __m13))
       (send* _m13 __m13)
     (progn
       (if __m13 (setq _m13 (car __m13)))
       _m13)))
  (:m46
   (&rest __m46)
   (if (keywordp (car __m46))
       (send* _m46 __m46)
     (progn
       (if __m46 (setq _m46 (car __m46)))
       _m46)))
  (:FBody
   (&rest __FBody)
   (if (keywordp (car __FBody))
       (send* _FBody __FBody)
     (progn
       (if __FBody (setq _FBody (car __FBody)))
       _FBody)))
  (:MBody
   (&rest __MBody)
   (if (keywordp (car __MBody))
       (send* _MBody __MBody)
     (progn
       (if __MBody (setq _MBody (car __MBody)))
       _MBody)))
  (:XDesired
   (&rest __XDesired)
   (if (keywordp (car __XDesired))
       (send* _XDesired __XDesired)
     (progn
       (if __XDesired (setq _XDesired (car __XDesired)))
       _XDesired)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _m13
    (send _m13 :serialization-length)
    ;; geometry_msgs/Vector3 _m46
    (send _m46 :serialization-length)
    ;; geometry_msgs/Vector3 _FBody
    (send _FBody :serialization-length)
    ;; geometry_msgs/Vector3 _MBody
    (send _MBody :serialization-length)
    ;; geometry_msgs/Vector3 _XDesired
    (send _XDesired :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _m13
       (send _m13 :serialize s)
     ;; geometry_msgs/Vector3 _m46
       (send _m46 :serialize s)
     ;; geometry_msgs/Vector3 _FBody
       (send _FBody :serialize s)
     ;; geometry_msgs/Vector3 _MBody
       (send _MBody :serialize s)
     ;; geometry_msgs/Vector3 _XDesired
       (send _XDesired :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _m13
     (send _m13 :deserialize buf ptr-) (incf ptr- (send _m13 :serialization-length))
   ;; geometry_msgs/Vector3 _m46
     (send _m46 :deserialize buf ptr-) (incf ptr- (send _m46 :serialization-length))
   ;; geometry_msgs/Vector3 _FBody
     (send _FBody :deserialize buf ptr-) (incf ptr- (send _FBody :serialization-length))
   ;; geometry_msgs/Vector3 _MBody
     (send _MBody :deserialize buf ptr-) (incf ptr- (send _MBody :serialization-length))
   ;; geometry_msgs/Vector3 _XDesired
     (send _XDesired :deserialize buf ptr-) (incf ptr- (send _XDesired :serialization-length))
   ;;
   self)
  )

(setf (get acl_msgs::HexData :md5sum-) "106174b561cc37cf60ae191c835ecc70")
(setf (get acl_msgs::HexData :datatype-) "acl_msgs/HexData")
(setf (get acl_msgs::HexData :definition-)
      "Header header
geometry_msgs/Vector3 m13
geometry_msgs/Vector3 m46
geometry_msgs/Vector3 FBody
geometry_msgs/Vector3 MBody
geometry_msgs/Vector3 XDesired
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



(provide :acl_msgs/HexData "106174b561cc37cf60ae191c835ecc70")


