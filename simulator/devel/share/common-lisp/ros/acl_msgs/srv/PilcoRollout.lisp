; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude PilcoRollout-request.msg.html

(cl:defclass <PilcoRollout-request> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type (cl:vector acl_msgs-msg:GPparams)
   :initform (cl:make-array 0 :element-type 'acl_msgs-msg:GPparams :initial-element (cl:make-instance 'acl_msgs-msg:GPparams)))
   (H
    :reader H
    :initarg :H
    :type cl:integer
    :initform 0)
   (num_centers
    :reader num_centers
    :initarg :num_centers
    :type cl:integer
    :initform 0)
   (D
    :reader D
    :initarg :D
    :type cl:integer
    :initform 0)
   (E
    :reader E
    :initarg :E
    :type cl:integer
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0)
   (random
    :reader random
    :initarg :random
    :type cl:boolean
    :initform cl:nil)
   (dy0
    :reader dy0
    :initarg :dy0
    :type cl:float
    :initform 0.0))
)

(cl:defclass PilcoRollout-request (<PilcoRollout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PilcoRollout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PilcoRollout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<PilcoRollout-request> is deprecated: use acl_msgs-srv:PilcoRollout-request instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:params-val is deprecated.  Use acl_msgs-srv:params instead.")
  (params m))

(cl:ensure-generic-function 'H-val :lambda-list '(m))
(cl:defmethod H-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:H-val is deprecated.  Use acl_msgs-srv:H instead.")
  (H m))

(cl:ensure-generic-function 'num_centers-val :lambda-list '(m))
(cl:defmethod num_centers-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:num_centers-val is deprecated.  Use acl_msgs-srv:num_centers instead.")
  (num_centers m))

(cl:ensure-generic-function 'D-val :lambda-list '(m))
(cl:defmethod D-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:D-val is deprecated.  Use acl_msgs-srv:D instead.")
  (D m))

(cl:ensure-generic-function 'E-val :lambda-list '(m))
(cl:defmethod E-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:E-val is deprecated.  Use acl_msgs-srv:E instead.")
  (E m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:rate-val is deprecated.  Use acl_msgs-srv:rate instead.")
  (rate m))

(cl:ensure-generic-function 'random-val :lambda-list '(m))
(cl:defmethod random-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:random-val is deprecated.  Use acl_msgs-srv:random instead.")
  (random m))

(cl:ensure-generic-function 'dy0-val :lambda-list '(m))
(cl:defmethod dy0-val ((m <PilcoRollout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:dy0-val is deprecated.  Use acl_msgs-srv:dy0 instead.")
  (dy0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PilcoRollout-request>) ostream)
  "Serializes a message object of type '<PilcoRollout-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
  (cl:let* ((signed (cl:slot-value msg 'H)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_centers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'D)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'E)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'random) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dy0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PilcoRollout-request>) istream)
  "Deserializes a message object of type '<PilcoRollout-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'acl_msgs-msg:GPparams))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'H) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_centers) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'D) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'E) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'random) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dy0) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PilcoRollout-request>)))
  "Returns string type for a service object of type '<PilcoRollout-request>"
  "acl_msgs/PilcoRolloutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilcoRollout-request)))
  "Returns string type for a service object of type 'PilcoRollout-request"
  "acl_msgs/PilcoRolloutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PilcoRollout-request>)))
  "Returns md5sum for a message object of type '<PilcoRollout-request>"
  "0eea5718b5de328911c85360216aff35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PilcoRollout-request)))
  "Returns md5sum for a message object of type 'PilcoRollout-request"
  "0eea5718b5de328911c85360216aff35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PilcoRollout-request>)))
  "Returns full string definition for message of type '<PilcoRollout-request>"
  (cl:format cl:nil "acl_msgs/GPparams[] params~%int64 H~%int64 num_centers~%int64 D~%int64 E~%float64 rate~%bool random~%float64 dy0~%~%================================================================================~%MSG: acl_msgs/GPparams~%float64[] input~%float64[] beta~%float64[] iL2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PilcoRollout-request)))
  "Returns full string definition for message of type 'PilcoRollout-request"
  (cl:format cl:nil "acl_msgs/GPparams[] params~%int64 H~%int64 num_centers~%int64 D~%int64 E~%float64 rate~%bool random~%float64 dy0~%~%================================================================================~%MSG: acl_msgs/GPparams~%float64[] input~%float64[] beta~%float64[] iL2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PilcoRollout-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     8
     8
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PilcoRollout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PilcoRollout-request
    (cl:cons ':params (params msg))
    (cl:cons ':H (H msg))
    (cl:cons ':num_centers (num_centers msg))
    (cl:cons ':D (D msg))
    (cl:cons ':E (E msg))
    (cl:cons ':rate (rate msg))
    (cl:cons ':random (random msg))
    (cl:cons ':dy0 (dy0 msg))
))
;//! \htmlinclude PilcoRollout-response.msg.html

(cl:defclass <PilcoRollout-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass PilcoRollout-response (<PilcoRollout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PilcoRollout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PilcoRollout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<PilcoRollout-response> is deprecated: use acl_msgs-srv:PilcoRollout-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PilcoRollout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:x-val is deprecated.  Use acl_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PilcoRollout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:y-val is deprecated.  Use acl_msgs-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PilcoRollout-response>) ostream)
  "Serializes a message object of type '<PilcoRollout-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PilcoRollout-response>) istream)
  "Deserializes a message object of type '<PilcoRollout-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PilcoRollout-response>)))
  "Returns string type for a service object of type '<PilcoRollout-response>"
  "acl_msgs/PilcoRolloutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilcoRollout-response)))
  "Returns string type for a service object of type 'PilcoRollout-response"
  "acl_msgs/PilcoRolloutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PilcoRollout-response>)))
  "Returns md5sum for a message object of type '<PilcoRollout-response>"
  "0eea5718b5de328911c85360216aff35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PilcoRollout-response)))
  "Returns md5sum for a message object of type 'PilcoRollout-response"
  "0eea5718b5de328911c85360216aff35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PilcoRollout-response>)))
  "Returns full string definition for message of type '<PilcoRollout-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray x~%std_msgs/Float64MultiArray y~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PilcoRollout-response)))
  "Returns full string definition for message of type 'PilcoRollout-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray x~%std_msgs/Float64MultiArray y~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PilcoRollout-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PilcoRollout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PilcoRollout-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PilcoRollout)))
  'PilcoRollout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PilcoRollout)))
  'PilcoRollout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilcoRollout)))
  "Returns string type for a service object of type '<PilcoRollout>"
  "acl_msgs/PilcoRollout")