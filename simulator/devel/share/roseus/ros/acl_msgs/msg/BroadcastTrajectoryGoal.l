;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::BroadcastTrajectoryGoal)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'BroadcastTrajectoryGoal (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::BROADCASTTRAJECTORYGOAL")
  (make-package "ACL_MSGS::BROADCASTTRAJECTORYGOAL"))

(in-package "ROS")
;;//! \htmlinclude BroadcastTrajectoryGoal.msg.html


(defclass acl_msgs::BroadcastTrajectoryGoal
  :super ros::object
  :slots (_trajectory _relative_starting_coordinates ))

(defmethod acl_msgs::BroadcastTrajectoryGoal
  (:init
   (&key
    ((:trajectory __trajectory) (instance acl_msgs::Trajectory :init))
    ((:relative_starting_coordinates __relative_starting_coordinates) nil)
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   (setq _relative_starting_coordinates __relative_starting_coordinates)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:relative_starting_coordinates
   (&optional (__relative_starting_coordinates :null))
   (if (not (eq __relative_starting_coordinates :null)) (setq _relative_starting_coordinates __relative_starting_coordinates)) _relative_starting_coordinates)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/Trajectory _trajectory
    (send _trajectory :serialization-length)
    ;; bool _relative_starting_coordinates
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/Trajectory _trajectory
       (send _trajectory :serialize s)
     ;; bool _relative_starting_coordinates
       (if _relative_starting_coordinates (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/Trajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; bool _relative_starting_coordinates
     (setq _relative_starting_coordinates (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::BroadcastTrajectoryGoal :md5sum-) "bb87a26e42509a1a023ac20a2d51a6d6")
(setf (get acl_msgs::BroadcastTrajectoryGoal :datatype-) "acl_msgs/BroadcastTrajectoryGoal")
(setf (get acl_msgs::BroadcastTrajectoryGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
acl_msgs/Trajectory trajectory
bool relative_starting_coordinates

================================================================================
MSG: acl_msgs/Trajectory
Header header
geometry_msgs/Vector3Stamped[] pos
geometry_msgs/Vector3Stamped[] vel
geometry_msgs/Vector3Stamped[] acc
geometry_msgs/Vector3Stamped[] jerk


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
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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



(provide :acl_msgs/BroadcastTrajectoryGoal "bb87a26e42509a1a023ac20a2d51a6d6")

