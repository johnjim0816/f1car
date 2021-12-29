; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadGoal.msg.html

(cl:defclass <QuadGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (dyaw
    :reader dyaw
    :initarg :dyaw
    :type cl:float
    :initform 0.0)
   (cut_power
    :reader cut_power
    :initarg :cut_power
    :type cl:boolean
    :initform cl:nil)
   (reset_xy_int
    :reader reset_xy_int
    :initarg :reset_xy_int
    :type cl:boolean
    :initform cl:nil)
   (reset_z_int
    :reader reset_z_int
    :initarg :reset_z_int
    :type cl:boolean
    :initform cl:nil)
   (xy_mode
    :reader xy_mode
    :initarg :xy_mode
    :type cl:fixnum
    :initform 0)
   (z_mode
    :reader z_mode
    :initarg :z_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QuadGoal (<QuadGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadGoal> is deprecated: use acl_msgs-msg:QuadGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pos-val is deprecated.  Use acl_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:vel-val is deprecated.  Use acl_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:accel-val is deprecated.  Use acl_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:jerk-val is deprecated.  Use acl_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:yaw-val is deprecated.  Use acl_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'dyaw-val :lambda-list '(m))
(cl:defmethod dyaw-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:dyaw-val is deprecated.  Use acl_msgs-msg:dyaw instead.")
  (dyaw m))

(cl:ensure-generic-function 'cut_power-val :lambda-list '(m))
(cl:defmethod cut_power-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:cut_power-val is deprecated.  Use acl_msgs-msg:cut_power instead.")
  (cut_power m))

(cl:ensure-generic-function 'reset_xy_int-val :lambda-list '(m))
(cl:defmethod reset_xy_int-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:reset_xy_int-val is deprecated.  Use acl_msgs-msg:reset_xy_int instead.")
  (reset_xy_int m))

(cl:ensure-generic-function 'reset_z_int-val :lambda-list '(m))
(cl:defmethod reset_z_int-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:reset_z_int-val is deprecated.  Use acl_msgs-msg:reset_z_int instead.")
  (reset_z_int m))

(cl:ensure-generic-function 'xy_mode-val :lambda-list '(m))
(cl:defmethod xy_mode-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:xy_mode-val is deprecated.  Use acl_msgs-msg:xy_mode instead.")
  (xy_mode m))

(cl:ensure-generic-function 'z_mode-val :lambda-list '(m))
(cl:defmethod z_mode-val ((m <QuadGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:z_mode-val is deprecated.  Use acl_msgs-msg:z_mode instead.")
  (z_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QuadGoal>)))
    "Constants for message type '<QuadGoal>"
  '((:MODE_POS . 0)
    (:MODE_VEL . 1)
    (:MODE_ACCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QuadGoal)))
    "Constants for message type 'QuadGoal"
  '((:MODE_POS . 0)
    (:MODE_VEL . 1)
    (:MODE_ACCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadGoal>) ostream)
  "Serializes a message object of type '<QuadGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dyaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cut_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_xy_int) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_z_int) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'xy_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadGoal>) istream)
  "Deserializes a message object of type '<QuadGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dyaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'cut_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_xy_int) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_z_int) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xy_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadGoal>)))
  "Returns string type for a message object of type '<QuadGoal>"
  "acl_msgs/QuadGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadGoal)))
  "Returns string type for a message object of type 'QuadGoal"
  "acl_msgs/QuadGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadGoal>)))
  "Returns md5sum for a message object of type '<QuadGoal>"
  "950d02887809b520e2711856716b3af3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadGoal)))
  "Returns md5sum for a message object of type 'QuadGoal"
  "950d02887809b520e2711856716b3af3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadGoal>)))
  "Returns full string definition for message of type '<QuadGoal>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 vel~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 jerk~%float64 yaw~%float64 dyaw~%bool cut_power~%bool reset_xy_int~%bool reset_z_int~%int8 xy_mode~%int8 z_mode~%int8 MODE_POS=0~%int8 MODE_VEL=1~%int8 MODE_ACCEL=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadGoal)))
  "Returns full string definition for message of type 'QuadGoal"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 pos~%geometry_msgs/Vector3 vel~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 jerk~%float64 yaw~%float64 dyaw~%bool cut_power~%bool reset_xy_int~%bool reset_z_int~%int8 xy_mode~%int8 z_mode~%int8 MODE_POS=0~%int8 MODE_VEL=1~%int8 MODE_ACCEL=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     8
     8
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadGoal
    (cl:cons ':header (header msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':dyaw (dyaw msg))
    (cl:cons ':cut_power (cut_power msg))
    (cl:cons ':reset_xy_int (reset_xy_int msg))
    (cl:cons ':reset_z_int (reset_z_int msg))
    (cl:cons ':xy_mode (xy_mode msg))
    (cl:cons ':z_mode (z_mode msg))
))
