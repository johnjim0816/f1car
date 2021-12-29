; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude GenSimplePath-request.msg.html

(cl:defclass <GenSimplePath-request> (roslisp-msg-protocol:ros-message)
  ((vmax
    :reader vmax
    :initarg :vmax
    :type cl:float
    :initform 0.0)
   (amax
    :reader amax
    :initarg :amax
    :type cl:float
    :initform 0.0)
   (p0
    :reader p0
    :initarg :p0
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass GenSimplePath-request (<GenSimplePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenSimplePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenSimplePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<GenSimplePath-request> is deprecated: use acl_msgs-srv:GenSimplePath-request instead.")))

(cl:ensure-generic-function 'vmax-val :lambda-list '(m))
(cl:defmethod vmax-val ((m <GenSimplePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:vmax-val is deprecated.  Use acl_msgs-srv:vmax instead.")
  (vmax m))

(cl:ensure-generic-function 'amax-val :lambda-list '(m))
(cl:defmethod amax-val ((m <GenSimplePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:amax-val is deprecated.  Use acl_msgs-srv:amax instead.")
  (amax m))

(cl:ensure-generic-function 'p0-val :lambda-list '(m))
(cl:defmethod p0-val ((m <GenSimplePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:p0-val is deprecated.  Use acl_msgs-srv:p0 instead.")
  (p0 m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <GenSimplePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:p1-val is deprecated.  Use acl_msgs-srv:p1 instead.")
  (p1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenSimplePath-request>) ostream)
  "Serializes a message object of type '<GenSimplePath-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'amax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenSimplePath-request>) istream)
  "Deserializes a message object of type '<GenSimplePath-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vmax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amax) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenSimplePath-request>)))
  "Returns string type for a service object of type '<GenSimplePath-request>"
  "acl_msgs/GenSimplePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenSimplePath-request)))
  "Returns string type for a service object of type 'GenSimplePath-request"
  "acl_msgs/GenSimplePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenSimplePath-request>)))
  "Returns md5sum for a message object of type '<GenSimplePath-request>"
  "99a4add3b0d2befb05994c24c7161515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenSimplePath-request)))
  "Returns md5sum for a message object of type 'GenSimplePath-request"
  "99a4add3b0d2befb05994c24c7161515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenSimplePath-request>)))
  "Returns full string definition for message of type '<GenSimplePath-request>"
  (cl:format cl:nil "float64 vmax~%float64 amax~%geometry_msgs/Vector3 p0~%geometry_msgs/Vector3 p1~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenSimplePath-request)))
  "Returns full string definition for message of type 'GenSimplePath-request"
  (cl:format cl:nil "float64 vmax~%float64 amax~%geometry_msgs/Vector3 p0~%geometry_msgs/Vector3 p1~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenSimplePath-request>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenSimplePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenSimplePath-request
    (cl:cons ':vmax (vmax msg))
    (cl:cons ':amax (amax msg))
    (cl:cons ':p0 (p0 msg))
    (cl:cons ':p1 (p1 msg))
))
;//! \htmlinclude GenSimplePath-response.msg.html

(cl:defclass <GenSimplePath-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type acl_msgs-msg:Trajectory
    :initform (cl:make-instance 'acl_msgs-msg:Trajectory)))
)

(cl:defclass GenSimplePath-response (<GenSimplePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenSimplePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenSimplePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<GenSimplePath-response> is deprecated: use acl_msgs-srv:GenSimplePath-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <GenSimplePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:trajectory-val is deprecated.  Use acl_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenSimplePath-response>) ostream)
  "Serializes a message object of type '<GenSimplePath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenSimplePath-response>) istream)
  "Deserializes a message object of type '<GenSimplePath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenSimplePath-response>)))
  "Returns string type for a service object of type '<GenSimplePath-response>"
  "acl_msgs/GenSimplePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenSimplePath-response)))
  "Returns string type for a service object of type 'GenSimplePath-response"
  "acl_msgs/GenSimplePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenSimplePath-response>)))
  "Returns md5sum for a message object of type '<GenSimplePath-response>"
  "99a4add3b0d2befb05994c24c7161515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenSimplePath-response)))
  "Returns md5sum for a message object of type 'GenSimplePath-response"
  "99a4add3b0d2befb05994c24c7161515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenSimplePath-response>)))
  "Returns full string definition for message of type '<GenSimplePath-response>"
  (cl:format cl:nil "acl_msgs/Trajectory trajectory~%~%~%================================================================================~%MSG: acl_msgs/Trajectory~%Header header~%geometry_msgs/Vector3Stamped[] pos~%geometry_msgs/Vector3Stamped[] vel~%geometry_msgs/Vector3Stamped[] acc~%geometry_msgs/Vector3Stamped[] jerk~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenSimplePath-response)))
  "Returns full string definition for message of type 'GenSimplePath-response"
  (cl:format cl:nil "acl_msgs/Trajectory trajectory~%~%~%================================================================================~%MSG: acl_msgs/Trajectory~%Header header~%geometry_msgs/Vector3Stamped[] pos~%geometry_msgs/Vector3Stamped[] vel~%geometry_msgs/Vector3Stamped[] acc~%geometry_msgs/Vector3Stamped[] jerk~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenSimplePath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenSimplePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenSimplePath-response
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenSimplePath)))
  'GenSimplePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenSimplePath)))
  'GenSimplePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenSimplePath)))
  "Returns string type for a service object of type '<GenSimplePath>"
  "acl_msgs/GenSimplePath")