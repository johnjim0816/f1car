; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadRawSensors.msg.html

(cl:defclass <QuadRawSensors> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (received_seq
    :reader received_seq
    :initarg :received_seq
    :type cl:fixnum
    :initform 0)
   (gyro
    :reader gyro
    :initarg :gyro
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel_f
    :reader accel_f
    :initarg :accel_f
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (mag
    :reader mag
    :initarg :mag
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadRawSensors (<QuadRawSensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadRawSensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadRawSensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadRawSensors> is deprecated: use acl_msgs-msg:QuadRawSensors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'received_seq-val :lambda-list '(m))
(cl:defmethod received_seq-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:received_seq-val is deprecated.  Use acl_msgs-msg:received_seq instead.")
  (received_seq m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:gyro-val is deprecated.  Use acl_msgs-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:accel-val is deprecated.  Use acl_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'accel_f-val :lambda-list '(m))
(cl:defmethod accel_f-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:accel_f-val is deprecated.  Use acl_msgs-msg:accel_f instead.")
  (accel_f m))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:mag-val is deprecated.  Use acl_msgs-msg:mag instead.")
  (mag m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <QuadRawSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pressure-val is deprecated.  Use acl_msgs-msg:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadRawSensors>) ostream)
  "Serializes a message object of type '<QuadRawSensors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_seq)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel_f) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mag) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadRawSensors>) istream)
  "Deserializes a message object of type '<QuadRawSensors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_seq)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel_f) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mag) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadRawSensors>)))
  "Returns string type for a message object of type '<QuadRawSensors>"
  "acl_msgs/QuadRawSensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadRawSensors)))
  "Returns string type for a message object of type 'QuadRawSensors"
  "acl_msgs/QuadRawSensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadRawSensors>)))
  "Returns md5sum for a message object of type '<QuadRawSensors>"
  "576df60f63a0e261ad4b0bad7d28d5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadRawSensors)))
  "Returns md5sum for a message object of type 'QuadRawSensors"
  "576df60f63a0e261ad4b0bad7d28d5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadRawSensors>)))
  "Returns full string definition for message of type '<QuadRawSensors>"
  (cl:format cl:nil "Header header~%uint8 received_seq~%geometry_msgs/Vector3 gyro~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 accel_f~%geometry_msgs/Vector3 mag~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadRawSensors)))
  "Returns full string definition for message of type 'QuadRawSensors"
  (cl:format cl:nil "Header header~%uint8 received_seq~%geometry_msgs/Vector3 gyro~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 accel_f~%geometry_msgs/Vector3 mag~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadRawSensors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel_f))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mag))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadRawSensors>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadRawSensors
    (cl:cons ':header (header msg))
    (cl:cons ':received_seq (received_seq msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':accel_f (accel_f msg))
    (cl:cons ':mag (mag msg))
    (cl:cons ':pressure (pressure msg))
))
