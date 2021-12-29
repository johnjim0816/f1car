; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude PolyInputs.msg.html

(cl:defclass <PolyInputs> (roslisp-msg-protocol:ros-message)
  ((n
    :reader n
    :initarg :n
    :type cl:integer
    :initform 0)
   (wp
    :reader wp
    :initarg :wp
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (wp0
    :reader wp0
    :initarg :wp0
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (wpf
    :reader wpf
    :initarg :wpf
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (wp_vel
    :reader wp_vel
    :initarg :wp_vel
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (wp_elm
    :reader wp_elm
    :initarg :wp_elm
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (tt
    :reader tt
    :initarg :tt
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PolyInputs (<PolyInputs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolyInputs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolyInputs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<PolyInputs> is deprecated: use acl_msgs-msg:PolyInputs instead.")))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:n-val is deprecated.  Use acl_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'wp-val :lambda-list '(m))
(cl:defmethod wp-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:wp-val is deprecated.  Use acl_msgs-msg:wp instead.")
  (wp m))

(cl:ensure-generic-function 'wp0-val :lambda-list '(m))
(cl:defmethod wp0-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:wp0-val is deprecated.  Use acl_msgs-msg:wp0 instead.")
  (wp0 m))

(cl:ensure-generic-function 'wpf-val :lambda-list '(m))
(cl:defmethod wpf-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:wpf-val is deprecated.  Use acl_msgs-msg:wpf instead.")
  (wpf m))

(cl:ensure-generic-function 'wp_vel-val :lambda-list '(m))
(cl:defmethod wp_vel-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:wp_vel-val is deprecated.  Use acl_msgs-msg:wp_vel instead.")
  (wp_vel m))

(cl:ensure-generic-function 'wp_elm-val :lambda-list '(m))
(cl:defmethod wp_elm-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:wp_elm-val is deprecated.  Use acl_msgs-msg:wp_elm instead.")
  (wp_elm m))

(cl:ensure-generic-function 'tt-val :lambda-list '(m))
(cl:defmethod tt-val ((m <PolyInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:tt-val is deprecated.  Use acl_msgs-msg:tt instead.")
  (tt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolyInputs>) ostream)
  "Serializes a message object of type '<PolyInputs>"
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wp0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wpf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wp_vel) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wp_elm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'wp_elm))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tt))))
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
   (cl:slot-value msg 'tt))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolyInputs>) istream)
  "Deserializes a message object of type '<PolyInputs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wp0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wpf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wp_vel) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wp_elm) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wp_elm)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tt)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolyInputs>)))
  "Returns string type for a message object of type '<PolyInputs>"
  "acl_msgs/PolyInputs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolyInputs)))
  "Returns string type for a message object of type 'PolyInputs"
  "acl_msgs/PolyInputs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolyInputs>)))
  "Returns md5sum for a message object of type '<PolyInputs>"
  "1bda35eaa32e8a9d7e75090c28023cbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolyInputs)))
  "Returns md5sum for a message object of type 'PolyInputs"
  "1bda35eaa32e8a9d7e75090c28023cbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolyInputs>)))
  "Returns full string definition for message of type '<PolyInputs>"
  (cl:format cl:nil "# Definition of polynomial inputs for trajectory generation.~%~%int64 n # polynomial order (n=4 -> cubic spline)~%std_msgs/Float64MultiArray wp # x,y,z waypoints~%std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate~%std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate~%std_msgs/Float64MultiArray wp_vel # intermediate velocity commands~%int64[] wp_elm # waypoints at which the wp_vel should be applied~%float64[] tt # time segments between waypoints (relative, not cumulative)~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolyInputs)))
  "Returns full string definition for message of type 'PolyInputs"
  (cl:format cl:nil "# Definition of polynomial inputs for trajectory generation.~%~%int64 n # polynomial order (n=4 -> cubic spline)~%std_msgs/Float64MultiArray wp # x,y,z waypoints~%std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate~%std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate~%std_msgs/Float64MultiArray wp_vel # intermediate velocity commands~%int64[] wp_elm # waypoints at which the wp_vel should be applied~%float64[] tt # time segments between waypoints (relative, not cumulative)~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolyInputs>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wp0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wpf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wp_vel))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wp_elm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolyInputs>))
  "Converts a ROS message object to a list"
  (cl:list 'PolyInputs
    (cl:cons ':n (n msg))
    (cl:cons ':wp (wp msg))
    (cl:cons ':wp0 (wp0 msg))
    (cl:cons ':wpf (wpf msg))
    (cl:cons ':wp_vel (wp_vel msg))
    (cl:cons ':wp_elm (wp_elm msg))
    (cl:cons ':tt (tt msg))
))
