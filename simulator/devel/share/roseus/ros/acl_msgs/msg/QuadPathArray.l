;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadPathArray)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadPathArray (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADPATHARRAY")
  (make-package "ACL_MSGS::QUADPATHARRAY"))

(in-package "ROS")
;;//! \htmlinclude QuadPathArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadPathArray
  :super ros::object
  :slots (_header _path_array ))

(defmethod acl_msgs::QuadPathArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path_array __path_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _path_array __path_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path_array
   (&rest __path_array)
   (if (keywordp (car __path_array))
       (send* _path_array __path_array)
     (progn
       (if __path_array (setq _path_array (car __path_array)))
       _path_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; acl_msgs/QuadPath[] _path_array
    (apply #'+ (send-all _path_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; acl_msgs/QuadPath[] _path_array
     (write-long (length _path_array) s)
     (dolist (elem _path_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; acl_msgs/QuadPath[] _path_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_array (let (r) (dotimes (i n) (push (instance acl_msgs::QuadPath :init) r)) r))
     (dolist (elem- _path_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get acl_msgs::QuadPathArray :md5sum-) "dafc4bcdd4e632ce5732db918109211e")
(setf (get acl_msgs::QuadPathArray :datatype-) "acl_msgs/QuadPathArray")
(setf (get acl_msgs::QuadPathArray :definition-)
      "Header header
acl_msgs/QuadPath[] path_array

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
MSG: acl_msgs/QuadPath
Header header
float64[] x
float64[] y

")



(provide :acl_msgs/QuadPathArray "dafc4bcdd4e632ce5732db918109211e")


