;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::ClassifierFeature)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'ClassifierFeature (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CLASSIFIERFEATURE")
  (make-package "ACL_MSGS::CLASSIFIERFEATURE"))

(in-package "ROS")
;;//! \htmlinclude ClassifierFeature.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::ClassifierFeature
  :super ros::object
  :slots (_header _feature_vector _class_name ))

(defmethod acl_msgs::ClassifierFeature
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:feature_vector __feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:class_name __class_name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _feature_vector __feature_vector)
   (setq _class_name __class_name)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:feature_vector
   (&optional __feature_vector)
   (if __feature_vector (setq _feature_vector __feature_vector)) _feature_vector)
  (:class_name
   (&rest __class_name)
   (if (keywordp (car __class_name))
       (send* _class_name __class_name)
     (progn
       (if __class_name (setq _class_name (car __class_name)))
       _class_name)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _feature_vector
    (* 8    (length _feature_vector)) 4
    ;; std_msgs/String _class_name
    (send _class_name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _feature_vector
     (write-long (length _feature_vector) s)
     (dotimes (i (length _feature_vector))
       (sys::poke (elt _feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; std_msgs/String _class_name
       (send _class_name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; std_msgs/String _class_name
     (send _class_name :deserialize buf ptr-) (incf ptr- (send _class_name :serialization-length))
   ;;
   self)
  )

(setf (get acl_msgs::ClassifierFeature :md5sum-) "b5d5252854bd1f22959b207699b8c36a")
(setf (get acl_msgs::ClassifierFeature :datatype-) "acl_msgs/ClassifierFeature")
(setf (get acl_msgs::ClassifierFeature :definition-)
      "Header header
float64[] feature_vector
std_msgs/String class_name
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
MSG: std_msgs/String
string data

")



(provide :acl_msgs/ClassifierFeature "b5d5252854bd1f22959b207699b8c36a")


