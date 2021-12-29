; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude RunStep-request.msg.html

(cl:defclass <RunStep-request> (roslisp-msg-protocol:ros-message)
  ((startState
    :reader startState
    :initarg :startState
    :type acl_msgs-msg:CarState
    :initform (cl:make-instance 'acl_msgs-msg:CarState))
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (omegaDes
    :reader omegaDes
    :initarg :omegaDes
    :type cl:float
    :initform 0.0)
   (turn
    :reader turn
    :initarg :turn
    :type cl:float
    :initform 0.0)
   (showVis
    :reader showVis
    :initarg :showVis
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RunStep-request (<RunStep-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunStep-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunStep-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<RunStep-request> is deprecated: use acl_msgs-srv:RunStep-request instead.")))

(cl:ensure-generic-function 'startState-val :lambda-list '(m))
(cl:defmethod startState-val ((m <RunStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:startState-val is deprecated.  Use acl_msgs-srv:startState instead.")
  (startState m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <RunStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:dt-val is deprecated.  Use acl_msgs-srv:dt instead.")
  (dt m))

(cl:ensure-generic-function 'omegaDes-val :lambda-list '(m))
(cl:defmethod omegaDes-val ((m <RunStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:omegaDes-val is deprecated.  Use acl_msgs-srv:omegaDes instead.")
  (omegaDes m))

(cl:ensure-generic-function 'turn-val :lambda-list '(m))
(cl:defmethod turn-val ((m <RunStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:turn-val is deprecated.  Use acl_msgs-srv:turn instead.")
  (turn m))

(cl:ensure-generic-function 'showVis-val :lambda-list '(m))
(cl:defmethod showVis-val ((m <RunStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:showVis-val is deprecated.  Use acl_msgs-srv:showVis instead.")
  (showVis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunStep-request>) ostream)
  "Serializes a message object of type '<RunStep-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'startState) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omegaDes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'showVis) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunStep-request>) istream)
  "Deserializes a message object of type '<RunStep-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'startState) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omegaDes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'turn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'showVis) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunStep-request>)))
  "Returns string type for a service object of type '<RunStep-request>"
  "acl_msgs/RunStepRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunStep-request)))
  "Returns string type for a service object of type 'RunStep-request"
  "acl_msgs/RunStepRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunStep-request>)))
  "Returns md5sum for a message object of type '<RunStep-request>"
  "217689ad4ccf0382c4356aba3735d2cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunStep-request)))
  "Returns md5sum for a message object of type 'RunStep-request"
  "217689ad4ccf0382c4356aba3735d2cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunStep-request>)))
  "Returns full string definition for message of type '<RunStep-request>"
  (cl:format cl:nil "acl_msgs/CarState startState~%float64 dt~%float64 omegaDes~%float64 turn~%bool showVis~%~%================================================================================~%MSG: acl_msgs/CarState~%Header header~%geometry_msgs/Pose pose~%float64 Vx~%float64 Vy~%float64 r~%float64 omegaF~%float64 omegaR~%float64 throttle~%float64 turn~%float64 x_center~%float64 y_center~%float64 R~%float64 f_FLx~%float64 f_FLy~%float64 f_FLz~%float64 f_FRx~%float64 f_FRy~%float64 f_FRz~%float64 f_RLx~%float64 f_RLy~%float64 f_RLz~%float64 f_RRx~%float64 f_RRy~%float64 f_RRz~%float64 ax~%float64 ay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunStep-request)))
  "Returns full string definition for message of type 'RunStep-request"
  (cl:format cl:nil "acl_msgs/CarState startState~%float64 dt~%float64 omegaDes~%float64 turn~%bool showVis~%~%================================================================================~%MSG: acl_msgs/CarState~%Header header~%geometry_msgs/Pose pose~%float64 Vx~%float64 Vy~%float64 r~%float64 omegaF~%float64 omegaR~%float64 throttle~%float64 turn~%float64 x_center~%float64 y_center~%float64 R~%float64 f_FLx~%float64 f_FLy~%float64 f_FLz~%float64 f_FRx~%float64 f_FRy~%float64 f_FRz~%float64 f_RLx~%float64 f_RLy~%float64 f_RLz~%float64 f_RRx~%float64 f_RRy~%float64 f_RRz~%float64 ax~%float64 ay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunStep-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'startState))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunStep-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunStep-request
    (cl:cons ':startState (startState msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':omegaDes (omegaDes msg))
    (cl:cons ':turn (turn msg))
    (cl:cons ':showVis (showVis msg))
))
;//! \htmlinclude RunStep-response.msg.html

(cl:defclass <RunStep-response> (roslisp-msg-protocol:ros-message)
  ((finalState
    :reader finalState
    :initarg :finalState
    :type acl_msgs-msg:CarState
    :initform (cl:make-instance 'acl_msgs-msg:CarState)))
)

(cl:defclass RunStep-response (<RunStep-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunStep-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunStep-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<RunStep-response> is deprecated: use acl_msgs-srv:RunStep-response instead.")))

(cl:ensure-generic-function 'finalState-val :lambda-list '(m))
(cl:defmethod finalState-val ((m <RunStep-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:finalState-val is deprecated.  Use acl_msgs-srv:finalState instead.")
  (finalState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunStep-response>) ostream)
  "Serializes a message object of type '<RunStep-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finalState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunStep-response>) istream)
  "Deserializes a message object of type '<RunStep-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finalState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunStep-response>)))
  "Returns string type for a service object of type '<RunStep-response>"
  "acl_msgs/RunStepResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunStep-response)))
  "Returns string type for a service object of type 'RunStep-response"
  "acl_msgs/RunStepResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunStep-response>)))
  "Returns md5sum for a message object of type '<RunStep-response>"
  "217689ad4ccf0382c4356aba3735d2cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunStep-response)))
  "Returns md5sum for a message object of type 'RunStep-response"
  "217689ad4ccf0382c4356aba3735d2cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunStep-response>)))
  "Returns full string definition for message of type '<RunStep-response>"
  (cl:format cl:nil "acl_msgs/CarState finalState~%~%~%================================================================================~%MSG: acl_msgs/CarState~%Header header~%geometry_msgs/Pose pose~%float64 Vx~%float64 Vy~%float64 r~%float64 omegaF~%float64 omegaR~%float64 throttle~%float64 turn~%float64 x_center~%float64 y_center~%float64 R~%float64 f_FLx~%float64 f_FLy~%float64 f_FLz~%float64 f_FRx~%float64 f_FRy~%float64 f_FRz~%float64 f_RLx~%float64 f_RLy~%float64 f_RLz~%float64 f_RRx~%float64 f_RRy~%float64 f_RRz~%float64 ax~%float64 ay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunStep-response)))
  "Returns full string definition for message of type 'RunStep-response"
  (cl:format cl:nil "acl_msgs/CarState finalState~%~%~%================================================================================~%MSG: acl_msgs/CarState~%Header header~%geometry_msgs/Pose pose~%float64 Vx~%float64 Vy~%float64 r~%float64 omegaF~%float64 omegaR~%float64 throttle~%float64 turn~%float64 x_center~%float64 y_center~%float64 R~%float64 f_FLx~%float64 f_FLy~%float64 f_FLz~%float64 f_FRx~%float64 f_FRy~%float64 f_FRz~%float64 f_RLx~%float64 f_RLy~%float64 f_RLz~%float64 f_RRx~%float64 f_RRy~%float64 f_RRz~%float64 ax~%float64 ay~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunStep-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finalState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunStep-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunStep-response
    (cl:cons ':finalState (finalState msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunStep)))
  'RunStep-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunStep)))
  'RunStep-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunStep)))
  "Returns string type for a service object of type '<RunStep>"
  "acl_msgs/RunStep")