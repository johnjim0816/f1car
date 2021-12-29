;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::FloatStamped)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'FloatStamped (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::FLOATSTAMPED")
  (make-package "ACL_MSGS::FLOATSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude FloatStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::FloatStamped
  :super ros::object
  :slots (_header _data ))

(defmethod acl_msgs::FloatStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (float __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get acl_msgs::FloatStamped :md5sum-) "ef848af8cf12f6df11682cc76fba477b")
(setf (get acl_msgs::FloatStamped :datatype-) "acl_msgs/FloatStamped")
(setf (get acl_msgs::FloatStamped :definition-)
      "Header header
float32 data
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

")



(provide :acl_msgs/FloatStamped "ef848af8cf12f6df11682cc76fba477b")

