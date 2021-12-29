;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::GenPath)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'GenPath (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::GENPATH")
  (make-package "ACL_MSGS::GENPATH"))
(unless (find-package "ACL_MSGS::GENPATHREQUEST")
  (make-package "ACL_MSGS::GENPATHREQUEST"))
(unless (find-package "ACL_MSGS::GENPATHRESPONSE")
  (make-package "ACL_MSGS::GENPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass acl_msgs::GenPathRequest
  :super ros::object
  :slots (_N _numD _T _h _R _p0 _v0 _a0 _p1 _v1 _a1 _obstacles ))

(defmethod acl_msgs::GenPathRequest
  (:init
   (&key
    ((:N __N) 0)
    ((:numD __numD) 0)
    ((:T __T) 0.0)
    ((:h __h) 0.0)
    ((:R __R) 0.0)
    ((:p0 __p0) ())
    ((:v0 __v0) ())
    ((:a0 __a0) ())
    ((:p1 __p1) ())
    ((:v1 __v1) ())
    ((:a1 __a1) ())
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _N (round __N))
   (setq _numD (round __numD))
   (setq _T (float __T))
   (setq _h (float __h))
   (setq _R (float __R))
   (setq _p0 __p0)
   (setq _v0 __v0)
   (setq _a0 __a0)
   (setq _p1 __p1)
   (setq _v1 __v1)
   (setq _a1 __a1)
   (setq _obstacles __obstacles)
   self)
  (:N
   (&optional __N)
   (if __N (setq _N __N)) _N)
  (:numD
   (&optional __numD)
   (if __numD (setq _numD __numD)) _numD)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:p0
   (&rest __p0)
   (if (keywordp (car __p0))
       (send* _p0 __p0)
     (progn
       (if __p0 (setq _p0 (car __p0)))
       _p0)))
  (:v0
   (&rest __v0)
   (if (keywordp (car __v0))
       (send* _v0 __v0)
     (progn
       (if __v0 (setq _v0 (car __v0)))
       _v0)))
  (:a0
   (&rest __a0)
   (if (keywordp (car __a0))
       (send* _a0 __a0)
     (progn
       (if __a0 (setq _a0 (car __a0)))
       _a0)))
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:v1
   (&rest __v1)
   (if (keywordp (car __v1))
       (send* _v1 __v1)
     (progn
       (if __v1 (setq _v1 (car __v1)))
       _v1)))
  (:a1
   (&rest __a1)
   (if (keywordp (car __a1))
       (send* _a1 __a1)
     (progn
       (if __a1 (setq _a1 (car __a1)))
       _a1)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; uint16 _N
    2
    ;; uint16 _numD
    2
    ;; float64 _T
    8
    ;; float64 _h
    8
    ;; float64 _R
    8
    ;; geometry_msgs/Vector3[] _p0
    (apply #'+ (send-all _p0 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _v0
    (apply #'+ (send-all _v0 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _a0
    (apply #'+ (send-all _a0 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _p1
    (apply #'+ (send-all _p1 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _v1
    (apply #'+ (send-all _v1 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _a1
    (apply #'+ (send-all _a1 :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _N
       (write-word _N s)
     ;; uint16 _numD
       (write-word _numD s)
     ;; float64 _T
       (sys::poke _T (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h
       (sys::poke _h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R
       (sys::poke _R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3[] _p0
     (write-long (length _p0) s)
     (dolist (elem _p0)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _v0
     (write-long (length _v0) s)
     (dolist (elem _v0)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _a0
     (write-long (length _a0) s)
     (dolist (elem _a0)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _p1
     (write-long (length _p1) s)
     (dolist (elem _p1)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _v1
     (write-long (length _v1) s)
     (dolist (elem _v1)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _a1
     (write-long (length _a1) s)
     (dolist (elem _a1)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _N
     (setq _N (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _numD
     (setq _numD (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _T
     (setq _T (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h
     (setq _h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R
     (setq _R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3[] _p0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p0 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _p0)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _v0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v0 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _v0)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _a0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a0 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _a0)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _p1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _p1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _v1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _v1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _a1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _a1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass acl_msgs::GenPathResponse
  :super ros::object
  :slots (_trajectories _converged ))

(defmethod acl_msgs::GenPathResponse
  (:init
   (&key
    ((:trajectories __trajectories) ())
    ((:converged __converged) nil)
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   (setq _converged __converged)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:converged
   (&optional (__converged :null))
   (if (not (eq __converged :null)) (setq _converged __converged)) _converged)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/Trajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ;; bool _converged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/Trajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;; bool _converged
       (if _converged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/Trajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance acl_msgs::Trajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _converged
     (setq _converged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::GenPath
  :super ros::object
  :slots ())

(setf (get acl_msgs::GenPath :md5sum-) "7a3e50543d6de9d6311088a4d374c49c")
(setf (get acl_msgs::GenPath :datatype-) "acl_msgs/GenPath")
(setf (get acl_msgs::GenPath :request) acl_msgs::GenPathRequest)
(setf (get acl_msgs::GenPath :response) acl_msgs::GenPathResponse)

(defmethod acl_msgs::GenPathRequest
  (:response () (instance acl_msgs::GenPathResponse :init)))

(setf (get acl_msgs::GenPathRequest :md5sum-) "7a3e50543d6de9d6311088a4d374c49c")
(setf (get acl_msgs::GenPathRequest :datatype-) "acl_msgs/GenPathRequest")
(setf (get acl_msgs::GenPathRequest :definition-)
      "uint16 N # note: including N here is a little redundant as it can be inferred from the dimension of the input vectors.  However, it is useful for error checking.
uint16 numD
float64 T
float64 h
float64 R
geometry_msgs/Vector3[] p0
geometry_msgs/Vector3[] v0
geometry_msgs/Vector3[] a0
geometry_msgs/Vector3[] p1
geometry_msgs/Vector3[] v1
geometry_msgs/Vector3[] a1
geometry_msgs/Vector3[] obstacles

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
acl_msgs/Trajectory[] trajectories
bool converged

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

(setf (get acl_msgs::GenPathResponse :md5sum-) "7a3e50543d6de9d6311088a4d374c49c")
(setf (get acl_msgs::GenPathResponse :datatype-) "acl_msgs/GenPathResponse")
(setf (get acl_msgs::GenPathResponse :definition-)
      "uint16 N # note: including N here is a little redundant as it can be inferred from the dimension of the input vectors.  However, it is useful for error checking.
uint16 numD
float64 T
float64 h
float64 R
geometry_msgs/Vector3[] p0
geometry_msgs/Vector3[] v0
geometry_msgs/Vector3[] a0
geometry_msgs/Vector3[] p1
geometry_msgs/Vector3[] v1
geometry_msgs/Vector3[] a1
geometry_msgs/Vector3[] obstacles

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
acl_msgs/Trajectory[] trajectories
bool converged

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



(provide :acl_msgs/GenPath "7a3e50543d6de9d6311088a4d374c49c")


