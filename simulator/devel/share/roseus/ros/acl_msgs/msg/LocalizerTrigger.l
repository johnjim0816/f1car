;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::LocalizerTrigger)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'LocalizerTrigger (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::LOCALIZERTRIGGER")
  (make-package "ACL_MSGS::LOCALIZERTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude LocalizerTrigger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::LocalizerTrigger
  :super ros::object
  :slots (_header _class_string _trigger_fov ))

(defmethod acl_msgs::LocalizerTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:class_string __class_string) "")
    ((:trigger_fov __trigger_fov) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _class_string (string __class_string))
   (setq _trigger_fov __trigger_fov)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:class_string
   (&optional __class_string)
   (if __class_string (setq _class_string __class_string)) _class_string)
  (:trigger_fov
   (&optional (__trigger_fov :null))
   (if (not (eq __trigger_fov :null)) (setq _trigger_fov __trigger_fov)) _trigger_fov)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _class_string
    4 (length _class_string)
    ;; bool _trigger_fov
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _class_string
       (write-long (length _class_string) s) (princ _class_string s)
     ;; bool _trigger_fov
       (if _trigger_fov (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _class_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _trigger_fov
     (setq _trigger_fov (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::LocalizerTrigger :md5sum-) "47a0bee22db703f6268646b232b82c71")
(setf (get acl_msgs::LocalizerTrigger :datatype-) "acl_msgs/LocalizerTrigger")
(setf (get acl_msgs::LocalizerTrigger :definition-)
      "Header header
string class_string
bool trigger_fov
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



(provide :acl_msgs/LocalizerTrigger "47a0bee22db703f6268646b232b82c71")


