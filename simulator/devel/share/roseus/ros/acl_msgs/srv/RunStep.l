;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::RunStep)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'RunStep (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::RUNSTEP")
  (make-package "ACL_MSGS::RUNSTEP"))
(unless (find-package "ACL_MSGS::RUNSTEPREQUEST")
  (make-package "ACL_MSGS::RUNSTEPREQUEST"))
(unless (find-package "ACL_MSGS::RUNSTEPRESPONSE")
  (make-package "ACL_MSGS::RUNSTEPRESPONSE"))

(in-package "ROS")





(defclass acl_msgs::RunStepRequest
  :super ros::object
  :slots (_startState _dt _omegaDes _turn _showVis ))

(defmethod acl_msgs::RunStepRequest
  (:init
   (&key
    ((:startState __startState) (instance acl_msgs::CarState :init))
    ((:dt __dt) 0.0)
    ((:omegaDes __omegaDes) 0.0)
    ((:turn __turn) 0.0)
    ((:showVis __showVis) nil)
    )
   (send-super :init)
   (setq _startState __startState)
   (setq _dt (float __dt))
   (setq _omegaDes (float __omegaDes))
   (setq _turn (float __turn))
   (setq _showVis __showVis)
   self)
  (:startState
   (&rest __startState)
   (if (keywordp (car __startState))
       (send* _startState __startState)
     (progn
       (if __startState (setq _startState (car __startState)))
       _startState)))
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:omegaDes
   (&optional __omegaDes)
   (if __omegaDes (setq _omegaDes __omegaDes)) _omegaDes)
  (:turn
   (&optional __turn)
   (if __turn (setq _turn __turn)) _turn)
  (:showVis
   (&optional (__showVis :null))
   (if (not (eq __showVis :null)) (setq _showVis __showVis)) _showVis)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/CarState _startState
    (send _startState :serialization-length)
    ;; float64 _dt
    8
    ;; float64 _omegaDes
    8
    ;; float64 _turn
    8
    ;; bool _showVis
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/CarState _startState
       (send _startState :serialize s)
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegaDes
       (sys::poke _omegaDes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _turn
       (sys::poke _turn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _showVis
       (if _showVis (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/CarState _startState
     (send _startState :deserialize buf ptr-) (incf ptr- (send _startState :serialization-length))
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegaDes
     (setq _omegaDes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _turn
     (setq _turn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _showVis
     (setq _showVis (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::RunStepResponse
  :super ros::object
  :slots (_finalState ))

(defmethod acl_msgs::RunStepResponse
  (:init
   (&key
    ((:finalState __finalState) (instance acl_msgs::CarState :init))
    )
   (send-super :init)
   (setq _finalState __finalState)
   self)
  (:finalState
   (&rest __finalState)
   (if (keywordp (car __finalState))
       (send* _finalState __finalState)
     (progn
       (if __finalState (setq _finalState (car __finalState)))
       _finalState)))
  (:serialization-length
   ()
   (+
    ;; acl_msgs/CarState _finalState
    (send _finalState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/CarState _finalState
       (send _finalState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/CarState _finalState
     (send _finalState :deserialize buf ptr-) (incf ptr- (send _finalState :serialization-length))
   ;;
   self)
  )

(defclass acl_msgs::RunStep
  :super ros::object
  :slots ())

(setf (get acl_msgs::RunStep :md5sum-) "217689ad4ccf0382c4356aba3735d2cb")
(setf (get acl_msgs::RunStep :datatype-) "acl_msgs/RunStep")
(setf (get acl_msgs::RunStep :request) acl_msgs::RunStepRequest)
(setf (get acl_msgs::RunStep :response) acl_msgs::RunStepResponse)

(defmethod acl_msgs::RunStepRequest
  (:response () (instance acl_msgs::RunStepResponse :init)))

(setf (get acl_msgs::RunStepRequest :md5sum-) "217689ad4ccf0382c4356aba3735d2cb")
(setf (get acl_msgs::RunStepRequest :datatype-) "acl_msgs/RunStepRequest")
(setf (get acl_msgs::RunStepRequest :definition-)
      "acl_msgs/CarState startState
float64 dt
float64 omegaDes
float64 turn
bool showVis

================================================================================
MSG: acl_msgs/CarState
Header header
geometry_msgs/Pose pose
float64 Vx
float64 Vy
float64 r
float64 omegaF
float64 omegaR
float64 throttle
float64 turn
float64 x_center
float64 y_center
float64 R
float64 f_FLx
float64 f_FLy
float64 f_FLz
float64 f_FRx
float64 f_FRy
float64 f_FRz
float64 f_RLx
float64 f_RLy
float64 f_RLz
float64 f_RRx
float64 f_RRy
float64 f_RRz
float64 ax
float64 ay

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
acl_msgs/CarState finalState


================================================================================
MSG: acl_msgs/CarState
Header header
geometry_msgs/Pose pose
float64 Vx
float64 Vy
float64 r
float64 omegaF
float64 omegaR
float64 throttle
float64 turn
float64 x_center
float64 y_center
float64 R
float64 f_FLx
float64 f_FLy
float64 f_FLz
float64 f_FRx
float64 f_FRy
float64 f_FRz
float64 f_RLx
float64 f_RLy
float64 f_RLz
float64 f_RRx
float64 f_RRy
float64 f_RRz
float64 ax
float64 ay

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get acl_msgs::RunStepResponse :md5sum-) "217689ad4ccf0382c4356aba3735d2cb")
(setf (get acl_msgs::RunStepResponse :datatype-) "acl_msgs/RunStepResponse")
(setf (get acl_msgs::RunStepResponse :definition-)
      "acl_msgs/CarState startState
float64 dt
float64 omegaDes
float64 turn
bool showVis

================================================================================
MSG: acl_msgs/CarState
Header header
geometry_msgs/Pose pose
float64 Vx
float64 Vy
float64 r
float64 omegaF
float64 omegaR
float64 throttle
float64 turn
float64 x_center
float64 y_center
float64 R
float64 f_FLx
float64 f_FLy
float64 f_FLz
float64 f_FRx
float64 f_FRy
float64 f_FRz
float64 f_RLx
float64 f_RLy
float64 f_RLz
float64 f_RRx
float64 f_RRy
float64 f_RRz
float64 ax
float64 ay

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
acl_msgs/CarState finalState


================================================================================
MSG: acl_msgs/CarState
Header header
geometry_msgs/Pose pose
float64 Vx
float64 Vy
float64 r
float64 omegaF
float64 omegaR
float64 throttle
float64 turn
float64 x_center
float64 y_center
float64 R
float64 f_FLx
float64 f_FLy
float64 f_FLz
float64 f_FRx
float64 f_FRy
float64 f_FRz
float64 f_RLx
float64 f_RLy
float64 f_RLz
float64 f_RRx
float64 f_RRy
float64 f_RRz
float64 ax
float64 ay

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :acl_msgs/RunStep "217689ad4ccf0382c4356aba3735d2cb")


