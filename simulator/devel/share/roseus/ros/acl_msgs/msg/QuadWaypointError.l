;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadWaypointError)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadWaypointError (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADWAYPOINTERROR")
  (make-package "ACL_MSGS::QUADWAYPOINTERROR"))

(in-package "ROS")
;;//! \htmlinclude QuadWaypointError.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadWaypointError
  :super ros::object
  :slots (_header _waypoint_stamp _pos_error ))

(defmethod acl_msgs::QuadWaypointError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoint_stamp __waypoint_stamp) (instance ros::time :init))
    ((:pos_error __pos_error) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoint_stamp __waypoint_stamp)
   (setq _pos_error __pos_error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoint_stamp
   (&optional __waypoint_stamp)
   (if __waypoint_stamp (setq _waypoint_stamp __waypoint_stamp)) _waypoint_stamp)
  (:pos_error
   (&rest __pos_error)
   (if (keywordp (car __pos_error))
       (send* _pos_error __pos_error)
     (progn
       (if __pos_error (setq _pos_error (car __pos_error)))
       _pos_error)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _waypoint_stamp
    8
    ;; geometry_msgs/Vector3 _pos_error
    (send _pos_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _waypoint_stamp
       (write-long (send _waypoint_stamp :sec) s) (write-long (send _waypoint_stamp :nsec) s)
     ;; geometry_msgs/Vector3 _pos_error
       (send _pos_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _waypoint_stamp
     (send _waypoint_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _waypoint_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _pos_error
     (send _pos_error :deserialize buf ptr-) (incf ptr- (send _pos_error :serialization-length))
   ;;
   self)
  )

(setf (get acl_msgs::QuadWaypointError :md5sum-) "53c885b005435a69f7514b3c4a71ebe7")
(setf (get acl_msgs::QuadWaypointError :datatype-) "acl_msgs/QuadWaypointError")
(setf (get acl_msgs::QuadWaypointError :definition-)
      "Header header
time waypoint_stamp
geometry_msgs/Vector3 pos_error
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



(provide :acl_msgs/QuadWaypointError "53c885b005435a69f7514b3c4a71ebe7")


