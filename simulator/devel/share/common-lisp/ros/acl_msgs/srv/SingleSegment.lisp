; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude SingleSegment-request.msg.html

(cl:defclass <SingleSegment-request> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type acl_msgs-msg:SimpleState
    :initform (cl:make-instance 'acl_msgs-msg:SimpleState))
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (reset_state
    :reader reset_state
    :initarg :reset_state
    :type cl:boolean
    :initform cl:nil)
   (use_start_state
    :reader use_start_state
    :initarg :use_start_state
    :type cl:boolean
    :initform cl:nil)
   (d
    :reader d
    :initarg :d
    :type cl:integer
    :initform 0))
)

(cl:defclass SingleSegment-request (<SingleSegment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleSegment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleSegment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<SingleSegment-request> is deprecated: use acl_msgs-srv:SingleSegment-request instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:s-val is deprecated.  Use acl_msgs-srv:s instead.")
  (s m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:r-val is deprecated.  Use acl_msgs-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:v-val is deprecated.  Use acl_msgs-srv:v instead.")
  (v m))

(cl:ensure-generic-function 'reset_state-val :lambda-list '(m))
(cl:defmethod reset_state-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:reset_state-val is deprecated.  Use acl_msgs-srv:reset_state instead.")
  (reset_state m))

(cl:ensure-generic-function 'use_start_state-val :lambda-list '(m))
(cl:defmethod use_start_state-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:use_start_state-val is deprecated.  Use acl_msgs-srv:use_start_state instead.")
  (use_start_state m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <SingleSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:d-val is deprecated.  Use acl_msgs-srv:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleSegment-request>) ostream)
  "Serializes a message object of type '<SingleSegment-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_start_state) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleSegment-request>) istream)
  "Deserializes a message object of type '<SingleSegment-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'reset_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_start_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleSegment-request>)))
  "Returns string type for a service object of type '<SingleSegment-request>"
  "acl_msgs/SingleSegmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleSegment-request)))
  "Returns string type for a service object of type 'SingleSegment-request"
  "acl_msgs/SingleSegmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleSegment-request>)))
  "Returns md5sum for a message object of type '<SingleSegment-request>"
  "c66573959adcbfed1484944f69febdbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleSegment-request)))
  "Returns md5sum for a message object of type 'SingleSegment-request"
  "c66573959adcbfed1484944f69febdbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleSegment-request>)))
  "Returns full string definition for message of type '<SingleSegment-request>"
  (cl:format cl:nil "acl_msgs/SimpleState s~%float64 r~%float64 v~%bool reset_state~%bool use_start_state~%int64 d~%~%================================================================================~%MSG: acl_msgs/SimpleState~%int64 segment~%float64 x~%float64 y~%float64 psi~%float64 omega~%float64 Vx~%float64 Vy~%float64 psidot~%int64 slipping~%float64 prev_radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleSegment-request)))
  "Returns full string definition for message of type 'SingleSegment-request"
  (cl:format cl:nil "acl_msgs/SimpleState s~%float64 r~%float64 v~%bool reset_state~%bool use_start_state~%int64 d~%~%================================================================================~%MSG: acl_msgs/SimpleState~%int64 segment~%float64 x~%float64 y~%float64 psi~%float64 omega~%float64 Vx~%float64 Vy~%float64 psidot~%int64 slipping~%float64 prev_radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleSegment-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's))
     8
     8
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleSegment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleSegment-request
    (cl:cons ':s (s msg))
    (cl:cons ':r (r msg))
    (cl:cons ':v (v msg))
    (cl:cons ':reset_state (reset_state msg))
    (cl:cons ':use_start_state (use_start_state msg))
    (cl:cons ':d (d msg))
))
;//! \htmlinclude SingleSegment-response.msg.html

(cl:defclass <SingleSegment-response> (roslisp-msg-protocol:ros-message)
  ((s_prime
    :reader s_prime
    :initarg :s_prime
    :type acl_msgs-msg:SimpleState
    :initform (cl:make-instance 'acl_msgs-msg:SimpleState))
   (reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass SingleSegment-response (<SingleSegment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleSegment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleSegment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<SingleSegment-response> is deprecated: use acl_msgs-srv:SingleSegment-response instead.")))

(cl:ensure-generic-function 's_prime-val :lambda-list '(m))
(cl:defmethod s_prime-val ((m <SingleSegment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:s_prime-val is deprecated.  Use acl_msgs-srv:s_prime instead.")
  (s_prime m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <SingleSegment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:reward-val is deprecated.  Use acl_msgs-srv:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleSegment-response>) ostream)
  "Serializes a message object of type '<SingleSegment-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's_prime) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleSegment-response>) istream)
  "Deserializes a message object of type '<SingleSegment-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's_prime) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reward) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleSegment-response>)))
  "Returns string type for a service object of type '<SingleSegment-response>"
  "acl_msgs/SingleSegmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleSegment-response)))
  "Returns string type for a service object of type 'SingleSegment-response"
  "acl_msgs/SingleSegmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleSegment-response>)))
  "Returns md5sum for a message object of type '<SingleSegment-response>"
  "c66573959adcbfed1484944f69febdbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleSegment-response)))
  "Returns md5sum for a message object of type 'SingleSegment-response"
  "c66573959adcbfed1484944f69febdbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleSegment-response>)))
  "Returns full string definition for message of type '<SingleSegment-response>"
  (cl:format cl:nil "acl_msgs/SimpleState s_prime~%float64 reward~%~%================================================================================~%MSG: acl_msgs/SimpleState~%int64 segment~%float64 x~%float64 y~%float64 psi~%float64 omega~%float64 Vx~%float64 Vy~%float64 psidot~%int64 slipping~%float64 prev_radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleSegment-response)))
  "Returns full string definition for message of type 'SingleSegment-response"
  (cl:format cl:nil "acl_msgs/SimpleState s_prime~%float64 reward~%~%================================================================================~%MSG: acl_msgs/SimpleState~%int64 segment~%float64 x~%float64 y~%float64 psi~%float64 omega~%float64 Vx~%float64 Vy~%float64 psidot~%int64 slipping~%float64 prev_radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleSegment-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's_prime))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleSegment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleSegment-response
    (cl:cons ':s_prime (s_prime msg))
    (cl:cons ':reward (reward msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SingleSegment)))
  'SingleSegment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SingleSegment)))
  'SingleSegment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleSegment)))
  "Returns string type for a service object of type '<SingleSegment>"
  "acl_msgs/SingleSegment")