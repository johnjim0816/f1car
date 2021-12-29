; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude ReturnToBase-request.msg.html

(cl:defclass <ReturnToBase-request> (roslisp-msg-protocol:ros-message)
  ((pose_init
    :reader pose_init
    :initarg :pose_init
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist_init
    :reader twist_init
    :initarg :twist_init
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (pose_goal
    :reader pose_goal
    :initarg :pose_goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist_goal
    :reader twist_goal
    :initarg :twist_goal
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass ReturnToBase-request (<ReturnToBase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReturnToBase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReturnToBase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<ReturnToBase-request> is deprecated: use acl_msgs-srv:ReturnToBase-request instead.")))

(cl:ensure-generic-function 'pose_init-val :lambda-list '(m))
(cl:defmethod pose_init-val ((m <ReturnToBase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:pose_init-val is deprecated.  Use acl_msgs-srv:pose_init instead.")
  (pose_init m))

(cl:ensure-generic-function 'twist_init-val :lambda-list '(m))
(cl:defmethod twist_init-val ((m <ReturnToBase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:twist_init-val is deprecated.  Use acl_msgs-srv:twist_init instead.")
  (twist_init m))

(cl:ensure-generic-function 'pose_goal-val :lambda-list '(m))
(cl:defmethod pose_goal-val ((m <ReturnToBase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:pose_goal-val is deprecated.  Use acl_msgs-srv:pose_goal instead.")
  (pose_goal m))

(cl:ensure-generic-function 'twist_goal-val :lambda-list '(m))
(cl:defmethod twist_goal-val ((m <ReturnToBase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:twist_goal-val is deprecated.  Use acl_msgs-srv:twist_goal instead.")
  (twist_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReturnToBase-request>) ostream)
  "Serializes a message object of type '<ReturnToBase-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_init) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_init) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReturnToBase-request>) istream)
  "Deserializes a message object of type '<ReturnToBase-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_init) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_init) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReturnToBase-request>)))
  "Returns string type for a service object of type '<ReturnToBase-request>"
  "acl_msgs/ReturnToBaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnToBase-request)))
  "Returns string type for a service object of type 'ReturnToBase-request"
  "acl_msgs/ReturnToBaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReturnToBase-request>)))
  "Returns md5sum for a message object of type '<ReturnToBase-request>"
  "c32c7657daad0d7f97bac883e5e34a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReturnToBase-request)))
  "Returns md5sum for a message object of type 'ReturnToBase-request"
  "c32c7657daad0d7f97bac883e5e34a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReturnToBase-request>)))
  "Returns full string definition for message of type '<ReturnToBase-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose_init~%geometry_msgs/Twist twist_init~%geometry_msgs/Pose pose_goal~%geometry_msgs/Twist twist_goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReturnToBase-request)))
  "Returns full string definition for message of type 'ReturnToBase-request"
  (cl:format cl:nil "geometry_msgs/Pose pose_init~%geometry_msgs/Twist twist_init~%geometry_msgs/Pose pose_goal~%geometry_msgs/Twist twist_goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReturnToBase-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_init))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_init))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReturnToBase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReturnToBase-request
    (cl:cons ':pose_init (pose_init msg))
    (cl:cons ':twist_init (twist_init msg))
    (cl:cons ':pose_goal (pose_goal msg))
    (cl:cons ':twist_goal (twist_goal msg))
))
;//! \htmlinclude ReturnToBase-response.msg.html

(cl:defclass <ReturnToBase-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReturnToBase-response (<ReturnToBase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReturnToBase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReturnToBase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<ReturnToBase-response> is deprecated: use acl_msgs-srv:ReturnToBase-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReturnToBase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:success-val is deprecated.  Use acl_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReturnToBase-response>) ostream)
  "Serializes a message object of type '<ReturnToBase-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReturnToBase-response>) istream)
  "Deserializes a message object of type '<ReturnToBase-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReturnToBase-response>)))
  "Returns string type for a service object of type '<ReturnToBase-response>"
  "acl_msgs/ReturnToBaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnToBase-response)))
  "Returns string type for a service object of type 'ReturnToBase-response"
  "acl_msgs/ReturnToBaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReturnToBase-response>)))
  "Returns md5sum for a message object of type '<ReturnToBase-response>"
  "c32c7657daad0d7f97bac883e5e34a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReturnToBase-response)))
  "Returns md5sum for a message object of type 'ReturnToBase-response"
  "c32c7657daad0d7f97bac883e5e34a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReturnToBase-response>)))
  "Returns full string definition for message of type '<ReturnToBase-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReturnToBase-response)))
  "Returns full string definition for message of type 'ReturnToBase-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReturnToBase-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReturnToBase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReturnToBase-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReturnToBase)))
  'ReturnToBase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReturnToBase)))
  'ReturnToBase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnToBase)))
  "Returns string type for a service object of type '<ReturnToBase>"
  "acl_msgs/ReturnToBase")