;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::GenSimplePath)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'GenSimplePath (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::GENSIMPLEPATH")
  (make-package "ACL_MSGS::GENSIMPLEPATH"))
(unless (find-package "ACL_MSGS::GENSIMPLEPATHREQUEST")
  (make-package "ACL_MSGS::GENSIMPLEPATHREQUEST"))
(unless (find-package "ACL_MSGS::GENSIMPLEPATHRESPONSE")
  (make-package "ACL_MSGS::GENSIMPLEPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass acl_msgs::GenSimplePathRequest
  :super ros::object
  :slots (_vmax _amax _p0 _p1 ))

(defmethod acl_msgs::GenSimplePathRequest
  (:init
   (&key
    ((:vmax __vmax) 0.0)
    ((:amax __amax) 0.0)
    ((:p0 __p0) (instance geometry_msgs::Vector3 :init))
    ((:p1 __p1) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _vmax (float __vmax))
   (setq _amax (float __amax))
   (setq _p0 __p0)
   (setq _p1 __p1)
   self)
  (:vmax
   (&optional __vmax)
   (if __vmax (setq _vmax __vmax)) _vmax)
  (:amax
   (&optional __amax)
   (if __amax (setq _amax __amax)) _amax)
  (:p0
   (&rest __p0)
   (if (keywordp (car __p0))
       (send* _p0 __p0)
     (progn
       (if __p0 (setq _p0 (car __p0)))
       _p0)))
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:serialization-length
   ()
   (+
    ;; float64 _vmax
    8
    ;; float64 _amax
    8
    ;; geometry_msgs/Vector3 _p0
    (send _p0 :serialization-length)
    ;; geometry_msgs/Vector3 _p1
    (send _p1 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vmax
       (sys::poke _vmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _amax
       (sys::poke _amax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _p0
       (send _p0 :serialize s)
     ;; geometry_msgs/Vector3 _p1
       (send _p1 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vmax
     (setq _vmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _amax
     (setq _amax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _p0
     (send _p0 :deserialize buf ptr-) (incf ptr- (send _p0 :serialization-length))
   ;; geometry_msgs/Vector3 _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;;
   self)
  )

(defclass acl_msgs::GenSimplePathResponse
  :super ros::object
  :slots (_trajectory ))

(defmethod acl_msgs::GenSimplePathResponse
  (:init
   (&key
    ((:trajectory __trajectory) (instance acl_msgs::Trajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; acl_msgs/Trajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/Trajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/Trajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass acl_msgs::GenSimplePath
  :super ros::object
  :slots ())

(setf (get acl_msgs::GenSimplePath :md5sum-) "99a4add3b0d2befb05994c24c7161515")
(setf (get acl_msgs::GenSimplePath :datatype-) "acl_msgs/GenSimplePath")
(setf (get acl_msgs::GenSimplePath :request) acl_msgs::GenSimplePathRequest)
(setf (get acl_msgs::GenSimplePath :response) acl_msgs::GenSimplePathResponse)

(defmethod acl_msgs::GenSimplePathRequest
  (:response () (instance acl_msgs::GenSimplePathResponse :init)))

(setf (get acl_msgs::GenSimplePathRequest :md5sum-) "99a4add3b0d2befb05994c24c7161515")
(setf (get acl_msgs::GenSimplePathRequest :datatype-) "acl_msgs/GenSimplePathRequest")
(setf (get acl_msgs::GenSimplePathRequest :definition-)
      "float64 vmax
float64 amax
geometry_msgs/Vector3 p0
geometry_msgs/Vector3 p1

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
---
acl_msgs/Trajectory trajectory


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
")

(setf (get acl_msgs::GenSimplePathResponse :md5sum-) "99a4add3b0d2befb05994c24c7161515")
(setf (get acl_msgs::GenSimplePathResponse :datatype-) "acl_msgs/GenSimplePathResponse")
(setf (get acl_msgs::GenSimplePathResponse :definition-)
      "float64 vmax
float64 amax
geometry_msgs/Vector3 p0
geometry_msgs/Vector3 p1

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
---
acl_msgs/Trajectory trajectory


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
")



(provide :acl_msgs/GenSimplePath "99a4add3b0d2befb05994c24c7161515")


