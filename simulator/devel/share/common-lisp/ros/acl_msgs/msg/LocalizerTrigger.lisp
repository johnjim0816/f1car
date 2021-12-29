; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude LocalizerTrigger.msg.html

(cl:defclass <LocalizerTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (class_string
    :reader class_string
    :initarg :class_string
    :type cl:string
    :initform "")
   (trigger_fov
    :reader trigger_fov
    :initarg :trigger_fov
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LocalizerTrigger (<LocalizerTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizerTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizerTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<LocalizerTrigger> is deprecated: use acl_msgs-msg:LocalizerTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalizerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'class_string-val :lambda-list '(m))
(cl:defmethod class_string-val ((m <LocalizerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:class_string-val is deprecated.  Use acl_msgs-msg:class_string instead.")
  (class_string m))

(cl:ensure-generic-function 'trigger_fov-val :lambda-list '(m))
(cl:defmethod trigger_fov-val ((m <LocalizerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:trigger_fov-val is deprecated.  Use acl_msgs-msg:trigger_fov instead.")
  (trigger_fov m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizerTrigger>) ostream)
  "Serializes a message object of type '<LocalizerTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_string))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger_fov) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizerTrigger>) istream)
  "Deserializes a message object of type '<LocalizerTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'trigger_fov) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizerTrigger>)))
  "Returns string type for a message object of type '<LocalizerTrigger>"
  "acl_msgs/LocalizerTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizerTrigger)))
  "Returns string type for a message object of type 'LocalizerTrigger"
  "acl_msgs/LocalizerTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizerTrigger>)))
  "Returns md5sum for a message object of type '<LocalizerTrigger>"
  "47a0bee22db703f6268646b232b82c71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizerTrigger)))
  "Returns md5sum for a message object of type 'LocalizerTrigger"
  "47a0bee22db703f6268646b232b82c71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizerTrigger>)))
  "Returns full string definition for message of type '<LocalizerTrigger>"
  (cl:format cl:nil "Header header~%string class_string~%bool trigger_fov~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizerTrigger)))
  "Returns full string definition for message of type 'LocalizerTrigger"
  (cl:format cl:nil "Header header~%string class_string~%bool trigger_fov~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizerTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'class_string))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizerTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizerTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':class_string (class_string msg))
    (cl:cons ':trigger_fov (trigger_fov msg))
))
