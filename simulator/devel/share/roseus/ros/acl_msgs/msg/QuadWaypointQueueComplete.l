;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadWaypointQueueComplete)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadWaypointQueueComplete (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADWAYPOINTQUEUECOMPLETE")
  (make-package "ACL_MSGS::QUADWAYPOINTQUEUECOMPLETE"))

(in-package "ROS")
;;//! \htmlinclude QuadWaypointQueueComplete.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadWaypointQueueComplete
  :super ros::object
  :slots (_header _is_queue_complete _veh_name ))

(defmethod acl_msgs::QuadWaypointQueueComplete
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_queue_complete __is_queue_complete) nil)
    ((:veh_name __veh_name) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_queue_complete __is_queue_complete)
   (setq _veh_name (string __veh_name))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_queue_complete
   (&optional (__is_queue_complete :null))
   (if (not (eq __is_queue_complete :null)) (setq _is_queue_complete __is_queue_complete)) _is_queue_complete)
  (:veh_name
   (&optional __veh_name)
   (if __veh_name (setq _veh_name __veh_name)) _veh_name)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_queue_complete
    1
    ;; string _veh_name
    4 (length _veh_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_queue_complete
       (if _is_queue_complete (write-byte -1 s) (write-byte 0 s))
     ;; string _veh_name
       (write-long (length _veh_name) s) (princ _veh_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_queue_complete
     (setq _is_queue_complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _veh_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _veh_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get acl_msgs::QuadWaypointQueueComplete :md5sum-) "e49744385c766b273caa0908141d6daf")
(setf (get acl_msgs::QuadWaypointQueueComplete :datatype-) "acl_msgs/QuadWaypointQueueComplete")
(setf (get acl_msgs::QuadWaypointQueueComplete :definition-)
      "Header header
bool is_queue_complete
string veh_name
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



(provide :acl_msgs/QuadWaypointQueueComplete "e49744385c766b273caa0908141d6daf")


