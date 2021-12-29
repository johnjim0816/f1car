; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude ClassifierFeature.msg.html

(cl:defclass <ClassifierFeature> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (feature_vector
    :reader feature_vector
    :initarg :feature_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (class_name
    :reader class_name
    :initarg :class_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ClassifierFeature (<ClassifierFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClassifierFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClassifierFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<ClassifierFeature> is deprecated: use acl_msgs-msg:ClassifierFeature instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClassifierFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'feature_vector-val :lambda-list '(m))
(cl:defmethod feature_vector-val ((m <ClassifierFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:feature_vector-val is deprecated.  Use acl_msgs-msg:feature_vector instead.")
  (feature_vector m))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <ClassifierFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:class_name-val is deprecated.  Use acl_msgs-msg:class_name instead.")
  (class_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClassifierFeature>) ostream)
  "Serializes a message object of type '<ClassifierFeature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'feature_vector))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'class_name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClassifierFeature>) istream)
  "Deserializes a message object of type '<ClassifierFeature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'class_name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClassifierFeature>)))
  "Returns string type for a message object of type '<ClassifierFeature>"
  "acl_msgs/ClassifierFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassifierFeature)))
  "Returns string type for a message object of type 'ClassifierFeature"
  "acl_msgs/ClassifierFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClassifierFeature>)))
  "Returns md5sum for a message object of type '<ClassifierFeature>"
  "b5d5252854bd1f22959b207699b8c36a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClassifierFeature)))
  "Returns md5sum for a message object of type 'ClassifierFeature"
  "b5d5252854bd1f22959b207699b8c36a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClassifierFeature>)))
  "Returns full string definition for message of type '<ClassifierFeature>"
  (cl:format cl:nil "Header header~%float64[] feature_vector~%std_msgs/String class_name~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClassifierFeature)))
  "Returns full string definition for message of type 'ClassifierFeature"
  (cl:format cl:nil "Header header~%float64[] feature_vector~%std_msgs/String class_name~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClassifierFeature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'class_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClassifierFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'ClassifierFeature
    (cl:cons ':header (header msg))
    (cl:cons ':feature_vector (feature_vector msg))
    (cl:cons ':class_name (class_name msg))
))
