; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadWaypointError.msg.html

(cl:defclass <QuadWaypointError> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoint_stamp
    :reader waypoint_stamp
    :initarg :waypoint_stamp
    :type cl:real
    :initform 0)
   (pos_error
    :reader pos_error
    :initarg :pos_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass QuadWaypointError (<QuadWaypointError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadWaypointError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadWaypointError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadWaypointError> is deprecated: use acl_msgs-msg:QuadWaypointError instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadWaypointError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoint_stamp-val :lambda-list '(m))
(cl:defmethod waypoint_stamp-val ((m <QuadWaypointError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:waypoint_stamp-val is deprecated.  Use acl_msgs-msg:waypoint_stamp instead.")
  (waypoint_stamp m))

(cl:ensure-generic-function 'pos_error-val :lambda-list '(m))
(cl:defmethod pos_error-val ((m <QuadWaypointError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pos_error-val is deprecated.  Use acl_msgs-msg:pos_error instead.")
  (pos_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadWaypointError>) ostream)
  "Serializes a message object of type '<QuadWaypointError>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'waypoint_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'waypoint_stamp) (cl:floor (cl:slot-value msg 'waypoint_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadWaypointError>) istream)
  "Deserializes a message object of type '<QuadWaypointError>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoint_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadWaypointError>)))
  "Returns string type for a message object of type '<QuadWaypointError>"
  "acl_msgs/QuadWaypointError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadWaypointError)))
  "Returns string type for a message object of type 'QuadWaypointError"
  "acl_msgs/QuadWaypointError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadWaypointError>)))
  "Returns md5sum for a message object of type '<QuadWaypointError>"
  "53c885b005435a69f7514b3c4a71ebe7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadWaypointError)))
  "Returns md5sum for a message object of type 'QuadWaypointError"
  "53c885b005435a69f7514b3c4a71ebe7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadWaypointError>)))
  "Returns full string definition for message of type '<QuadWaypointError>"
  (cl:format cl:nil "Header header~%time waypoint_stamp~%geometry_msgs/Vector3 pos_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadWaypointError)))
  "Returns full string definition for message of type 'QuadWaypointError"
  (cl:format cl:nil "Header header~%time waypoint_stamp~%geometry_msgs/Vector3 pos_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadWaypointError>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadWaypointError>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadWaypointError
    (cl:cons ':header (header msg))
    (cl:cons ':waypoint_stamp (waypoint_stamp msg))
    (cl:cons ':pos_error (pos_error msg))
))
