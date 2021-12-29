; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude ResetCar-request.msg.html

(cl:defclass <ResetCar-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0))
)

(cl:defclass ResetCar-request (<ResetCar-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCar-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCar-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<ResetCar-request> is deprecated: use acl_msgs-srv:ResetCar-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <ResetCar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:r-val is deprecated.  Use acl_msgs-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <ResetCar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:v-val is deprecated.  Use acl_msgs-srv:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCar-request>) ostream)
  "Serializes a message object of type '<ResetCar-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCar-request>) istream)
  "Deserializes a message object of type '<ResetCar-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCar-request>)))
  "Returns string type for a service object of type '<ResetCar-request>"
  "acl_msgs/ResetCarRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCar-request)))
  "Returns string type for a service object of type 'ResetCar-request"
  "acl_msgs/ResetCarRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCar-request>)))
  "Returns md5sum for a message object of type '<ResetCar-request>"
  "cc73949c39211cec69275b332eb717e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCar-request)))
  "Returns md5sum for a message object of type 'ResetCar-request"
  "cc73949c39211cec69275b332eb717e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCar-request>)))
  "Returns full string definition for message of type '<ResetCar-request>"
  (cl:format cl:nil "float64 r~%float64 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCar-request)))
  "Returns full string definition for message of type 'ResetCar-request"
  (cl:format cl:nil "float64 r~%float64 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCar-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCar-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCar-request
    (cl:cons ':r (r msg))
    (cl:cons ':v (v msg))
))
;//! \htmlinclude ResetCar-response.msg.html

(cl:defclass <ResetCar-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetCar-response (<ResetCar-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCar-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCar-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<ResetCar-response> is deprecated: use acl_msgs-srv:ResetCar-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetCar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:success-val is deprecated.  Use acl_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCar-response>) ostream)
  "Serializes a message object of type '<ResetCar-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCar-response>) istream)
  "Deserializes a message object of type '<ResetCar-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCar-response>)))
  "Returns string type for a service object of type '<ResetCar-response>"
  "acl_msgs/ResetCarResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCar-response)))
  "Returns string type for a service object of type 'ResetCar-response"
  "acl_msgs/ResetCarResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCar-response>)))
  "Returns md5sum for a message object of type '<ResetCar-response>"
  "cc73949c39211cec69275b332eb717e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCar-response)))
  "Returns md5sum for a message object of type 'ResetCar-response"
  "cc73949c39211cec69275b332eb717e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCar-response>)))
  "Returns full string definition for message of type '<ResetCar-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCar-response)))
  "Returns full string definition for message of type 'ResetCar-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCar-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCar-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCar-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetCar)))
  'ResetCar-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetCar)))
  'ResetCar-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCar)))
  "Returns string type for a service object of type '<ResetCar>"
  "acl_msgs/ResetCar")