; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude SingleTrack-request.msg.html

(cl:defclass <SingleTrack-request> (roslisp-msg-protocol:ros-message)
  ((xcross
    :reader xcross
    :initarg :xcross
    :type cl:float
    :initform 0.0)
   (t13
    :reader t13
    :initarg :t13
    :type cl:float
    :initform 0.0)
   (t24
    :reader t24
    :initarg :t24
    :type cl:float
    :initform 0.0)
   (num_laps
    :reader num_laps
    :initarg :num_laps
    :type cl:integer
    :initform 0))
)

(cl:defclass SingleTrack-request (<SingleTrack-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleTrack-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleTrack-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<SingleTrack-request> is deprecated: use acl_msgs-srv:SingleTrack-request instead.")))

(cl:ensure-generic-function 'xcross-val :lambda-list '(m))
(cl:defmethod xcross-val ((m <SingleTrack-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:xcross-val is deprecated.  Use acl_msgs-srv:xcross instead.")
  (xcross m))

(cl:ensure-generic-function 't13-val :lambda-list '(m))
(cl:defmethod t13-val ((m <SingleTrack-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:t13-val is deprecated.  Use acl_msgs-srv:t13 instead.")
  (t13 m))

(cl:ensure-generic-function 't24-val :lambda-list '(m))
(cl:defmethod t24-val ((m <SingleTrack-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:t24-val is deprecated.  Use acl_msgs-srv:t24 instead.")
  (t24 m))

(cl:ensure-generic-function 'num_laps-val :lambda-list '(m))
(cl:defmethod num_laps-val ((m <SingleTrack-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:num_laps-val is deprecated.  Use acl_msgs-srv:num_laps instead.")
  (num_laps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleTrack-request>) ostream)
  "Serializes a message object of type '<SingleTrack-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xcross))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't13))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't24))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num_laps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleTrack-request>) istream)
  "Deserializes a message object of type '<SingleTrack-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xcross) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't13) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't24) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_laps) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleTrack-request>)))
  "Returns string type for a service object of type '<SingleTrack-request>"
  "acl_msgs/SingleTrackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleTrack-request)))
  "Returns string type for a service object of type 'SingleTrack-request"
  "acl_msgs/SingleTrackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleTrack-request>)))
  "Returns md5sum for a message object of type '<SingleTrack-request>"
  "ebb6ffcb54323364a7c7cbbed4d8e73a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleTrack-request)))
  "Returns md5sum for a message object of type 'SingleTrack-request"
  "ebb6ffcb54323364a7c7cbbed4d8e73a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleTrack-request>)))
  "Returns full string definition for message of type '<SingleTrack-request>"
  (cl:format cl:nil "float64 xcross~%float64 t13~%float64 t24~%int64 num_laps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleTrack-request)))
  "Returns full string definition for message of type 'SingleTrack-request"
  (cl:format cl:nil "float64 xcross~%float64 t13~%float64 t24~%int64 num_laps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleTrack-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleTrack-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleTrack-request
    (cl:cons ':xcross (xcross msg))
    (cl:cons ':t13 (t13 msg))
    (cl:cons ':t24 (t24 msg))
    (cl:cons ':num_laps (num_laps msg))
))
;//! \htmlinclude SingleTrack-response.msg.html

(cl:defclass <SingleTrack-response> (roslisp-msg-protocol:ros-message)
  ((reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass SingleTrack-response (<SingleTrack-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleTrack-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleTrack-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<SingleTrack-response> is deprecated: use acl_msgs-srv:SingleTrack-response instead.")))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <SingleTrack-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:reward-val is deprecated.  Use acl_msgs-srv:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleTrack-response>) ostream)
  "Serializes a message object of type '<SingleTrack-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleTrack-response>) istream)
  "Deserializes a message object of type '<SingleTrack-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleTrack-response>)))
  "Returns string type for a service object of type '<SingleTrack-response>"
  "acl_msgs/SingleTrackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleTrack-response)))
  "Returns string type for a service object of type 'SingleTrack-response"
  "acl_msgs/SingleTrackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleTrack-response>)))
  "Returns md5sum for a message object of type '<SingleTrack-response>"
  "ebb6ffcb54323364a7c7cbbed4d8e73a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleTrack-response)))
  "Returns md5sum for a message object of type 'SingleTrack-response"
  "ebb6ffcb54323364a7c7cbbed4d8e73a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleTrack-response>)))
  "Returns full string definition for message of type '<SingleTrack-response>"
  (cl:format cl:nil "float64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleTrack-response)))
  "Returns full string definition for message of type 'SingleTrack-response"
  (cl:format cl:nil "float64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleTrack-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleTrack-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleTrack-response
    (cl:cons ':reward (reward msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SingleTrack)))
  'SingleTrack-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SingleTrack)))
  'SingleTrack-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleTrack)))
  "Returns string type for a service object of type '<SingleTrack>"
  "acl_msgs/SingleTrack")