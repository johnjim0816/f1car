; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude OLcmd-request.msg.html

(cl:defclass <OLcmd-request> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (max_omega
    :reader max_omega
    :initarg :max_omega
    :type cl:float
    :initform 0.0)
   (max_turn
    :reader max_turn
    :initarg :max_turn
    :type cl:float
    :initform 0.0))
)

(cl:defclass OLcmd-request (<OLcmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OLcmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OLcmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<OLcmd-request> is deprecated: use acl_msgs-srv:OLcmd-request instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <OLcmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:time-val is deprecated.  Use acl_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'max_omega-val :lambda-list '(m))
(cl:defmethod max_omega-val ((m <OLcmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:max_omega-val is deprecated.  Use acl_msgs-srv:max_omega instead.")
  (max_omega m))

(cl:ensure-generic-function 'max_turn-val :lambda-list '(m))
(cl:defmethod max_turn-val ((m <OLcmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:max_turn-val is deprecated.  Use acl_msgs-srv:max_turn instead.")
  (max_turn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OLcmd-request>) ostream)
  "Serializes a message object of type '<OLcmd-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OLcmd-request>) istream)
  "Deserializes a message object of type '<OLcmd-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_omega) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_turn) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OLcmd-request>)))
  "Returns string type for a service object of type '<OLcmd-request>"
  "acl_msgs/OLcmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OLcmd-request)))
  "Returns string type for a service object of type 'OLcmd-request"
  "acl_msgs/OLcmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OLcmd-request>)))
  "Returns md5sum for a message object of type '<OLcmd-request>"
  "b6d83d7c503466443ff05073f46784d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OLcmd-request)))
  "Returns md5sum for a message object of type 'OLcmd-request"
  "b6d83d7c503466443ff05073f46784d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OLcmd-request>)))
  "Returns full string definition for message of type '<OLcmd-request>"
  (cl:format cl:nil "float64 time~%float64 max_omega~%float64 max_turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OLcmd-request)))
  "Returns full string definition for message of type 'OLcmd-request"
  (cl:format cl:nil "float64 time~%float64 max_omega~%float64 max_turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OLcmd-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OLcmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OLcmd-request
    (cl:cons ':time (time msg))
    (cl:cons ':max_omega (max_omega msg))
    (cl:cons ':max_turn (max_turn msg))
))
;//! \htmlinclude OLcmd-response.msg.html

(cl:defclass <OLcmd-response> (roslisp-msg-protocol:ros-message)
  ((finish
    :reader finish
    :initarg :finish
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OLcmd-response (<OLcmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OLcmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OLcmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<OLcmd-response> is deprecated: use acl_msgs-srv:OLcmd-response instead.")))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <OLcmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:finish-val is deprecated.  Use acl_msgs-srv:finish instead.")
  (finish m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OLcmd-response>) ostream)
  "Serializes a message object of type '<OLcmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finish) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OLcmd-response>) istream)
  "Deserializes a message object of type '<OLcmd-response>"
    (cl:setf (cl:slot-value msg 'finish) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OLcmd-response>)))
  "Returns string type for a service object of type '<OLcmd-response>"
  "acl_msgs/OLcmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OLcmd-response)))
  "Returns string type for a service object of type 'OLcmd-response"
  "acl_msgs/OLcmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OLcmd-response>)))
  "Returns md5sum for a message object of type '<OLcmd-response>"
  "b6d83d7c503466443ff05073f46784d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OLcmd-response)))
  "Returns md5sum for a message object of type 'OLcmd-response"
  "b6d83d7c503466443ff05073f46784d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OLcmd-response>)))
  "Returns full string definition for message of type '<OLcmd-response>"
  (cl:format cl:nil "bool finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OLcmd-response)))
  "Returns full string definition for message of type 'OLcmd-response"
  (cl:format cl:nil "bool finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OLcmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OLcmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OLcmd-response
    (cl:cons ':finish (finish msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OLcmd)))
  'OLcmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OLcmd)))
  'OLcmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OLcmd)))
  "Returns string type for a service object of type '<OLcmd>"
  "acl_msgs/OLcmd")