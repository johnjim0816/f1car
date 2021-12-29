; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude CarCmd.msg.html

(cl:defclass <CarCmd> (roslisp-msg-protocol:ros-message)
  ((steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (drive
    :reader drive
    :initarg :drive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarCmd (<CarCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<CarCmd> is deprecated: use acl_msgs-msg:CarCmd instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <CarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:steering-val is deprecated.  Use acl_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <CarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:throttle-val is deprecated.  Use acl_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'drive-val :lambda-list '(m))
(cl:defmethod drive-val ((m <CarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:drive-val is deprecated.  Use acl_msgs-msg:drive instead.")
  (drive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarCmd>) ostream)
  "Serializes a message object of type '<CarCmd>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'drive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarCmd>) istream)
  "Deserializes a message object of type '<CarCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'drive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarCmd>)))
  "Returns string type for a message object of type '<CarCmd>"
  "acl_msgs/CarCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarCmd)))
  "Returns string type for a message object of type 'CarCmd"
  "acl_msgs/CarCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarCmd>)))
  "Returns md5sum for a message object of type '<CarCmd>"
  "4ac2be4070d79fa054aff6c418b04022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarCmd)))
  "Returns md5sum for a message object of type 'CarCmd"
  "4ac2be4070d79fa054aff6c418b04022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarCmd>)))
  "Returns full string definition for message of type '<CarCmd>"
  (cl:format cl:nil "float64 steering~%float64 throttle~%bool drive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarCmd)))
  "Returns full string definition for message of type 'CarCmd"
  (cl:format cl:nil "float64 steering~%float64 throttle~%bool drive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarCmd>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'CarCmd
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':drive (drive msg))
))
