; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude Latency.msg.html

(cl:defclass <Latency> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data1
    :reader data1
    :initarg :data1
    :type cl:float
    :initform 0.0)
   (data2
    :reader data2
    :initarg :data2
    :type cl:float
    :initform 0.0)
   (data3
    :reader data3
    :initarg :data3
    :type cl:float
    :initform 0.0)
   (data4
    :reader data4
    :initarg :data4
    :type cl:float
    :initform 0.0)
   (total
    :reader total
    :initarg :total
    :type cl:float
    :initform 0.0))
)

(cl:defclass Latency (<Latency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Latency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Latency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<Latency> is deprecated: use acl_msgs-msg:Latency instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:data1-val is deprecated.  Use acl_msgs-msg:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:data2-val is deprecated.  Use acl_msgs-msg:data2 instead.")
  (data2 m))

(cl:ensure-generic-function 'data3-val :lambda-list '(m))
(cl:defmethod data3-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:data3-val is deprecated.  Use acl_msgs-msg:data3 instead.")
  (data3 m))

(cl:ensure-generic-function 'data4-val :lambda-list '(m))
(cl:defmethod data4-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:data4-val is deprecated.  Use acl_msgs-msg:data4 instead.")
  (data4 m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <Latency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:total-val is deprecated.  Use acl_msgs-msg:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Latency>) ostream)
  "Serializes a message object of type '<Latency>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Latency>) istream)
  "Deserializes a message object of type '<Latency>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Latency>)))
  "Returns string type for a message object of type '<Latency>"
  "acl_msgs/Latency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Latency)))
  "Returns string type for a message object of type 'Latency"
  "acl_msgs/Latency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Latency>)))
  "Returns md5sum for a message object of type '<Latency>"
  "c9ffa597c23ec327206c583453c53b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Latency)))
  "Returns md5sum for a message object of type 'Latency"
  "c9ffa597c23ec327206c583453c53b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Latency>)))
  "Returns full string definition for message of type '<Latency>"
  (cl:format cl:nil "Header header~%float32 data1~%float32 data2~%float32 data3~%float32 data4~%float32 total~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Latency)))
  "Returns full string definition for message of type 'Latency"
  (cl:format cl:nil "Header header~%float32 data1~%float32 data2~%float32 data3~%float32 data4~%float32 total~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Latency>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Latency>))
  "Converts a ROS message object to a list"
  (cl:list 'Latency
    (cl:cons ':header (header msg))
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
    (cl:cons ':data3 (data3 msg))
    (cl:cons ':data4 (data4 msg))
    (cl:cons ':total (total msg))
))
