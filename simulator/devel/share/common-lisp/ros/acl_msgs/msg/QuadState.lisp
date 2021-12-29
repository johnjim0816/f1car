; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadState.msg.html

(cl:defclass <QuadState> (roslisp-msg-protocol:ros-message)
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

(cl:defclass QuadState (<QuadState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadState> is deprecated: use acl_msgs-msg:QuadState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:mode-val is deprecated.  Use acl_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QuadState>)))
    "Constants for message type '<QuadState>"
  '((:NOT_FLYING . 0)
    (:TAKEOFF . 1)
    (:FLYING . 2)
    (:LAND . 3)
    (:GO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QuadState)))
    "Constants for message type 'QuadState"
  '((:NOT_FLYING . 0)
    (:TAKEOFF . 1)
    (:FLYING . 2)
    (:LAND . 3)
    (:GO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadState>) ostream)
  "Serializes a message object of type '<QuadState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadState>) istream)
  "Deserializes a message object of type '<QuadState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadState>)))
  "Returns string type for a message object of type '<QuadState>"
  "acl_msgs/QuadState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadState)))
  "Returns string type for a message object of type 'QuadState"
  "acl_msgs/QuadState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadState>)))
  "Returns md5sum for a message object of type '<QuadState>"
  "123ae2877a4abe01c500278be81cb18c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadState)))
  "Returns md5sum for a message object of type 'QuadState"
  "123ae2877a4abe01c500278be81cb18c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadState>)))
  "Returns full string definition for message of type '<QuadState>"
  (cl:format cl:nil "Header header~%uint8 mode~%uint8 NOT_FLYING   = 0~%uint8 TAKEOFF      = 1~%uint8 FLYING       = 2~%uint8 LAND	       = 3~%uint8 GO 		   = 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadState)))
  "Returns full string definition for message of type 'QuadState"
  (cl:format cl:nil "Header header~%uint8 mode~%uint8 NOT_FLYING   = 0~%uint8 TAKEOFF      = 1~%uint8 FLYING       = 2~%uint8 LAND	       = 3~%uint8 GO 		   = 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadState>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadState
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
