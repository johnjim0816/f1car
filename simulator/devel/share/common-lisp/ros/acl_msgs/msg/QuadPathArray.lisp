; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadPathArray.msg.html

(cl:defclass <QuadPathArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path_array
    :reader path_array
    :initarg :path_array
    :type (cl:vector acl_msgs-msg:QuadPath)
   :initform (cl:make-array 0 :element-type 'acl_msgs-msg:QuadPath :initial-element (cl:make-instance 'acl_msgs-msg:QuadPath))))
)

(cl:defclass QuadPathArray (<QuadPathArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadPathArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadPathArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadPathArray> is deprecated: use acl_msgs-msg:QuadPathArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadPathArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path_array-val :lambda-list '(m))
(cl:defmethod path_array-val ((m <QuadPathArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:path_array-val is deprecated.  Use acl_msgs-msg:path_array instead.")
  (path_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadPathArray>) ostream)
  "Serializes a message object of type '<QuadPathArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadPathArray>) istream)
  "Deserializes a message object of type '<QuadPathArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'acl_msgs-msg:QuadPath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadPathArray>)))
  "Returns string type for a message object of type '<QuadPathArray>"
  "acl_msgs/QuadPathArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadPathArray)))
  "Returns string type for a message object of type 'QuadPathArray"
  "acl_msgs/QuadPathArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadPathArray>)))
  "Returns md5sum for a message object of type '<QuadPathArray>"
  "dafc4bcdd4e632ce5732db918109211e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadPathArray)))
  "Returns md5sum for a message object of type 'QuadPathArray"
  "dafc4bcdd4e632ce5732db918109211e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadPathArray>)))
  "Returns full string definition for message of type '<QuadPathArray>"
  (cl:format cl:nil "Header header~%acl_msgs/QuadPath[] path_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: acl_msgs/QuadPath~%Header header~%float64[] x~%float64[] y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadPathArray)))
  "Returns full string definition for message of type 'QuadPathArray"
  (cl:format cl:nil "Header header~%acl_msgs/QuadPath[] path_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: acl_msgs/QuadPath~%Header header~%float64[] x~%float64[] y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadPathArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadPathArray>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadPathArray
    (cl:cons ':header (header msg))
    (cl:cons ':path_array (path_array msg))
))
