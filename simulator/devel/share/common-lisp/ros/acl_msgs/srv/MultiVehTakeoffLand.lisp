; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude MultiVehTakeoffLand-request.msg.html

(cl:defclass <MultiVehTakeoffLand-request> (roslisp-msg-protocol:ros-message)
  ((takeoff
    :reader takeoff
    :initarg :takeoff
    :type cl:boolean
    :initform cl:nil)
   (use_current_pose
    :reader use_current_pose
    :initarg :use_current_pose
    :type cl:boolean
    :initform cl:nil)
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass MultiVehTakeoffLand-request (<MultiVehTakeoffLand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehTakeoffLand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehTakeoffLand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehTakeoffLand-request> is deprecated: use acl_msgs-srv:MultiVehTakeoffLand-request instead.")))

(cl:ensure-generic-function 'takeoff-val :lambda-list '(m))
(cl:defmethod takeoff-val ((m <MultiVehTakeoffLand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:takeoff-val is deprecated.  Use acl_msgs-srv:takeoff instead.")
  (takeoff m))

(cl:ensure-generic-function 'use_current_pose-val :lambda-list '(m))
(cl:defmethod use_current_pose-val ((m <MultiVehTakeoffLand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:use_current_pose-val is deprecated.  Use acl_msgs-srv:use_current_pose instead.")
  (use_current_pose m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <MultiVehTakeoffLand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:initial_pose-val is deprecated.  Use acl_msgs-srv:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehTakeoffLand-request>) ostream)
  "Serializes a message object of type '<MultiVehTakeoffLand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'takeoff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_current_pose) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'initial_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'initial_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehTakeoffLand-request>) istream)
  "Deserializes a message object of type '<MultiVehTakeoffLand-request>"
    (cl:setf (cl:slot-value msg 'takeoff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_current_pose) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'initial_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'initial_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehTakeoffLand-request>)))
  "Returns string type for a service object of type '<MultiVehTakeoffLand-request>"
  "acl_msgs/MultiVehTakeoffLandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehTakeoffLand-request)))
  "Returns string type for a service object of type 'MultiVehTakeoffLand-request"
  "acl_msgs/MultiVehTakeoffLandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehTakeoffLand-request>)))
  "Returns md5sum for a message object of type '<MultiVehTakeoffLand-request>"
  "27f425af94b703f836a37c2b21423b61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehTakeoffLand-request)))
  "Returns md5sum for a message object of type 'MultiVehTakeoffLand-request"
  "27f425af94b703f836a37c2b21423b61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehTakeoffLand-request>)))
  "Returns full string definition for message of type '<MultiVehTakeoffLand-request>"
  (cl:format cl:nil "bool takeoff~%bool use_current_pose~%geometry_msgs/Pose[] initial_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehTakeoffLand-request)))
  "Returns full string definition for message of type 'MultiVehTakeoffLand-request"
  (cl:format cl:nil "bool takeoff~%bool use_current_pose~%geometry_msgs/Pose[] initial_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehTakeoffLand-request>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initial_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehTakeoffLand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehTakeoffLand-request
    (cl:cons ':takeoff (takeoff msg))
    (cl:cons ':use_current_pose (use_current_pose msg))
    (cl:cons ':initial_pose (initial_pose msg))
))
;//! \htmlinclude MultiVehTakeoffLand-response.msg.html

(cl:defclass <MultiVehTakeoffLand-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MultiVehTakeoffLand-response (<MultiVehTakeoffLand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehTakeoffLand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehTakeoffLand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehTakeoffLand-response> is deprecated: use acl_msgs-srv:MultiVehTakeoffLand-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <MultiVehTakeoffLand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:done-val is deprecated.  Use acl_msgs-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehTakeoffLand-response>) ostream)
  "Serializes a message object of type '<MultiVehTakeoffLand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehTakeoffLand-response>) istream)
  "Deserializes a message object of type '<MultiVehTakeoffLand-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehTakeoffLand-response>)))
  "Returns string type for a service object of type '<MultiVehTakeoffLand-response>"
  "acl_msgs/MultiVehTakeoffLandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehTakeoffLand-response)))
  "Returns string type for a service object of type 'MultiVehTakeoffLand-response"
  "acl_msgs/MultiVehTakeoffLandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehTakeoffLand-response>)))
  "Returns md5sum for a message object of type '<MultiVehTakeoffLand-response>"
  "27f425af94b703f836a37c2b21423b61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehTakeoffLand-response)))
  "Returns md5sum for a message object of type 'MultiVehTakeoffLand-response"
  "27f425af94b703f836a37c2b21423b61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehTakeoffLand-response>)))
  "Returns full string definition for message of type '<MultiVehTakeoffLand-response>"
  (cl:format cl:nil "bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehTakeoffLand-response)))
  "Returns full string definition for message of type 'MultiVehTakeoffLand-response"
  (cl:format cl:nil "bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehTakeoffLand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehTakeoffLand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehTakeoffLand-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultiVehTakeoffLand)))
  'MultiVehTakeoffLand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultiVehTakeoffLand)))
  'MultiVehTakeoffLand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehTakeoffLand)))
  "Returns string type for a service object of type '<MultiVehTakeoffLand>"
  "acl_msgs/MultiVehTakeoffLand")