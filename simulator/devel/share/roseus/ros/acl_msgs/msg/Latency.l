;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::Latency)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'Latency (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::LATENCY")
  (make-package "ACL_MSGS::LATENCY"))

(in-package "ROS")
;;//! \htmlinclude Latency.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::Latency
  :super ros::object
  :slots (_header _data1 _data2 _data3 _data4 _total ))

(defmethod acl_msgs::Latency
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data1 __data1) 0.0)
    ((:data2 __data2) 0.0)
    ((:data3 __data3) 0.0)
    ((:data4 __data4) 0.0)
    ((:total __total) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data1 (float __data1))
   (setq _data2 (float __data2))
   (setq _data3 (float __data3))
   (setq _data4 (float __data4))
   (setq _total (float __total))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data1
   (&optional __data1)
   (if __data1 (setq _data1 __data1)) _data1)
  (:data2
   (&optional __data2)
   (if __data2 (setq _data2 __data2)) _data2)
  (:data3
   (&optional __data3)
   (if __data3 (setq _data3 __data3)) _data3)
  (:data4
   (&optional __data4)
   (if __data4 (setq _data4 __data4)) _data4)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _data1
    4
    ;; float32 _data2
    4
    ;; float32 _data3
    4
    ;; float32 _data4
    4
    ;; float32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data1
       (sys::poke _data1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _data2
       (sys::poke _data2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _data3
       (sys::poke _data3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _data4
       (sys::poke _data4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _total
       (sys::poke _total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data1
     (setq _data1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _data2
     (setq _data2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _data3
     (setq _data3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _data4
     (setq _data4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _total
     (setq _total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get acl_msgs::Latency :md5sum-) "c9ffa597c23ec327206c583453c53b3c")
(setf (get acl_msgs::Latency :datatype-) "acl_msgs/Latency")
(setf (get acl_msgs::Latency :definition-)
      "Header header
float32 data1
float32 data2
float32 data3
float32 data4
float32 total

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



(provide :acl_msgs/Latency "c9ffa597c23ec327206c583453c53b3c")


