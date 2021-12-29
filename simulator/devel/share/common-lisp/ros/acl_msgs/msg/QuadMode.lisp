; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadMode.msg.html

(cl:defclass <QuadMode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QuadMode (<QuadMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadMode> is deprecated: use acl_msgs-msg:QuadMode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <QuadMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:mode-val is deprecated.  Use acl_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QuadMode>)))
    "Constants for message type '<QuadMode>"
  '((:MODE_IDLE . 0)
    (:MODE_WAYPOINT . 1)
    (:MODE_ZERO_VEL . 2)
    (:MODE_DESCEND . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QuadMode)))
    "Constants for message type 'QuadMode"
  '((:MODE_IDLE . 0)
    (:MODE_WAYPOINT . 1)
    (:MODE_ZERO_VEL . 2)
    (:MODE_DESCEND . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadMode>) ostream)
  "Serializes a message object of type '<QuadMode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadMode>) istream)
  "Deserializes a message object of type '<QuadMode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadMode>)))
  "Returns string type for a message object of type '<QuadMode>"
  "acl_msgs/QuadMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadMode)))
  "Returns string type for a message object of type 'QuadMode"
  "acl_msgs/QuadMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadMode>)))
  "Returns md5sum for a message object of type '<QuadMode>"
  "28d3b3b34da558537ac7063523a951e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadMode)))
  "Returns md5sum for a message object of type 'QuadMode"
  "28d3b3b34da558537ac7063523a951e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadMode>)))
  "Returns full string definition for message of type '<QuadMode>"
  (cl:format cl:nil "Header header~%int8 mode~%int8 MODE_IDLE     = 0~%int8 MODE_WAYPOINT = 1~%int8 MODE_ZERO_VEL = 2~%int8 MODE_DESCEND  = 3~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadMode)))
  "Returns full string definition for message of type 'QuadMode"
  (cl:format cl:nil "Header header~%int8 mode~%int8 MODE_IDLE     = 0~%int8 MODE_WAYPOINT = 1~%int8 MODE_ZERO_VEL = 2~%int8 MODE_DESCEND  = 3~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadMode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadMode>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadMode
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
