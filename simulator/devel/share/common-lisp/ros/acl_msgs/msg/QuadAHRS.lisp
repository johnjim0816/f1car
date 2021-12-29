; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadAHRS.msg.html

(cl:defclass <QuadAHRS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (att
    :reader att
    :initarg :att
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (att_meas
    :reader att_meas
    :initarg :att_meas
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (rpy
    :reader rpy
    :initarg :rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy_meas
    :reader rpy_meas
    :initarg :rpy_meas
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass QuadAHRS (<QuadAHRS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadAHRS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadAHRS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadAHRS> is deprecated: use acl_msgs-msg:QuadAHRS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadAHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'att-val :lambda-list '(m))
(cl:defmethod att-val ((m <QuadAHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:att-val is deprecated.  Use acl_msgs-msg:att instead.")
  (att m))

(cl:ensure-generic-function 'att_meas-val :lambda-list '(m))
(cl:defmethod att_meas-val ((m <QuadAHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:att_meas-val is deprecated.  Use acl_msgs-msg:att_meas instead.")
  (att_meas m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <QuadAHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:rpy-val is deprecated.  Use acl_msgs-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'rpy_meas-val :lambda-list '(m))
(cl:defmethod rpy_meas-val ((m <QuadAHRS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:rpy_meas-val is deprecated.  Use acl_msgs-msg:rpy_meas instead.")
  (rpy_meas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadAHRS>) ostream)
  "Serializes a message object of type '<QuadAHRS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'att) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'att_meas) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy_meas) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadAHRS>) istream)
  "Deserializes a message object of type '<QuadAHRS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'att) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'att_meas) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy_meas) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadAHRS>)))
  "Returns string type for a message object of type '<QuadAHRS>"
  "acl_msgs/QuadAHRS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadAHRS)))
  "Returns string type for a message object of type 'QuadAHRS"
  "acl_msgs/QuadAHRS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadAHRS>)))
  "Returns md5sum for a message object of type '<QuadAHRS>"
  "9f4a3386f9afc8a5354d3ad861314b66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadAHRS)))
  "Returns md5sum for a message object of type 'QuadAHRS"
  "9f4a3386f9afc8a5354d3ad861314b66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadAHRS>)))
  "Returns full string definition for message of type '<QuadAHRS>"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion att~%geometry_msgs/Quaternion att_meas~%geometry_msgs/Vector3 rpy~%geometry_msgs/Vector3 rpy_meas~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadAHRS)))
  "Returns full string definition for message of type 'QuadAHRS"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion att~%geometry_msgs/Quaternion att_meas~%geometry_msgs/Vector3 rpy~%geometry_msgs/Vector3 rpy_meas~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadAHRS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'att))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'att_meas))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy_meas))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadAHRS>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadAHRS
    (cl:cons ':header (header msg))
    (cl:cons ':att (att msg))
    (cl:cons ':att_meas (att_meas msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':rpy_meas (rpy_meas msg))
))
