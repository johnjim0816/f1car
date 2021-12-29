; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude HexData.msg.html

(cl:defclass <HexData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (m13
    :reader m13
    :initarg :m13
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (m46
    :reader m46
    :initarg :m46
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (FBody
    :reader FBody
    :initarg :FBody
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (MBody
    :reader MBody
    :initarg :MBody
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (XDesired
    :reader XDesired
    :initarg :XDesired
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass HexData (<HexData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HexData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HexData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<HexData> is deprecated: use acl_msgs-msg:HexData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'm13-val :lambda-list '(m))
(cl:defmethod m13-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:m13-val is deprecated.  Use acl_msgs-msg:m13 instead.")
  (m13 m))

(cl:ensure-generic-function 'm46-val :lambda-list '(m))
(cl:defmethod m46-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:m46-val is deprecated.  Use acl_msgs-msg:m46 instead.")
  (m46 m))

(cl:ensure-generic-function 'FBody-val :lambda-list '(m))
(cl:defmethod FBody-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:FBody-val is deprecated.  Use acl_msgs-msg:FBody instead.")
  (FBody m))

(cl:ensure-generic-function 'MBody-val :lambda-list '(m))
(cl:defmethod MBody-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:MBody-val is deprecated.  Use acl_msgs-msg:MBody instead.")
  (MBody m))

(cl:ensure-generic-function 'XDesired-val :lambda-list '(m))
(cl:defmethod XDesired-val ((m <HexData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:XDesired-val is deprecated.  Use acl_msgs-msg:XDesired instead.")
  (XDesired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HexData>) ostream)
  "Serializes a message object of type '<HexData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm13) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm46) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'FBody) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'MBody) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'XDesired) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HexData>) istream)
  "Deserializes a message object of type '<HexData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm13) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm46) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'FBody) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'MBody) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'XDesired) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HexData>)))
  "Returns string type for a message object of type '<HexData>"
  "acl_msgs/HexData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HexData)))
  "Returns string type for a message object of type 'HexData"
  "acl_msgs/HexData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HexData>)))
  "Returns md5sum for a message object of type '<HexData>"
  "106174b561cc37cf60ae191c835ecc70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HexData)))
  "Returns md5sum for a message object of type 'HexData"
  "106174b561cc37cf60ae191c835ecc70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HexData>)))
  "Returns full string definition for message of type '<HexData>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 m13~%geometry_msgs/Vector3 m46~%geometry_msgs/Vector3 FBody~%geometry_msgs/Vector3 MBody~%geometry_msgs/Vector3 XDesired~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HexData)))
  "Returns full string definition for message of type 'HexData"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 m13~%geometry_msgs/Vector3 m46~%geometry_msgs/Vector3 FBody~%geometry_msgs/Vector3 MBody~%geometry_msgs/Vector3 XDesired~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HexData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm13))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm46))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'FBody))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'MBody))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'XDesired))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HexData>))
  "Converts a ROS message object to a list"
  (cl:list 'HexData
    (cl:cons ':header (header msg))
    (cl:cons ':m13 (m13 msg))
    (cl:cons ':m46 (m46 msg))
    (cl:cons ':FBody (FBody msg))
    (cl:cons ':MBody (MBody msg))
    (cl:cons ':XDesired (XDesired msg))
))
