; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadWaypointQueueComplete.msg.html

(cl:defclass <QuadWaypointQueueComplete> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_queue_complete
    :reader is_queue_complete
    :initarg :is_queue_complete
    :type cl:boolean
    :initform cl:nil)
   (veh_name
    :reader veh_name
    :initarg :veh_name
    :type cl:string
    :initform ""))
)

(cl:defclass QuadWaypointQueueComplete (<QuadWaypointQueueComplete>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadWaypointQueueComplete>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadWaypointQueueComplete)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadWaypointQueueComplete> is deprecated: use acl_msgs-msg:QuadWaypointQueueComplete instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadWaypointQueueComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_queue_complete-val :lambda-list '(m))
(cl:defmethod is_queue_complete-val ((m <QuadWaypointQueueComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:is_queue_complete-val is deprecated.  Use acl_msgs-msg:is_queue_complete instead.")
  (is_queue_complete m))

(cl:ensure-generic-function 'veh_name-val :lambda-list '(m))
(cl:defmethod veh_name-val ((m <QuadWaypointQueueComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:veh_name-val is deprecated.  Use acl_msgs-msg:veh_name instead.")
  (veh_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadWaypointQueueComplete>) ostream)
  "Serializes a message object of type '<QuadWaypointQueueComplete>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_queue_complete) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'veh_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'veh_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadWaypointQueueComplete>) istream)
  "Deserializes a message object of type '<QuadWaypointQueueComplete>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_queue_complete) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'veh_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'veh_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadWaypointQueueComplete>)))
  "Returns string type for a message object of type '<QuadWaypointQueueComplete>"
  "acl_msgs/QuadWaypointQueueComplete")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadWaypointQueueComplete)))
  "Returns string type for a message object of type 'QuadWaypointQueueComplete"
  "acl_msgs/QuadWaypointQueueComplete")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadWaypointQueueComplete>)))
  "Returns md5sum for a message object of type '<QuadWaypointQueueComplete>"
  "e49744385c766b273caa0908141d6daf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadWaypointQueueComplete)))
  "Returns md5sum for a message object of type 'QuadWaypointQueueComplete"
  "e49744385c766b273caa0908141d6daf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadWaypointQueueComplete>)))
  "Returns full string definition for message of type '<QuadWaypointQueueComplete>"
  (cl:format cl:nil "Header header~%bool is_queue_complete~%string veh_name~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadWaypointQueueComplete)))
  "Returns full string definition for message of type 'QuadWaypointQueueComplete"
  (cl:format cl:nil "Header header~%bool is_queue_complete~%string veh_name~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadWaypointQueueComplete>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'veh_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadWaypointQueueComplete>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadWaypointQueueComplete
    (cl:cons ':header (header msg))
    (cl:cons ':is_queue_complete (is_queue_complete msg))
    (cl:cons ':veh_name (veh_name msg))
))
