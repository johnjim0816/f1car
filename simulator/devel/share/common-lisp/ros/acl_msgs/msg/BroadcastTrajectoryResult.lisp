; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude BroadcastTrajectoryResult.msg.html

(cl:defclass <BroadcastTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BroadcastTrajectoryResult (<BroadcastTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BroadcastTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BroadcastTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<BroadcastTrajectoryResult> is deprecated: use acl_msgs-msg:BroadcastTrajectoryResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BroadcastTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:success-val is deprecated.  Use acl_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BroadcastTrajectoryResult>) ostream)
  "Serializes a message object of type '<BroadcastTrajectoryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BroadcastTrajectoryResult>) istream)
  "Deserializes a message object of type '<BroadcastTrajectoryResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BroadcastTrajectoryResult>)))
  "Returns string type for a message object of type '<BroadcastTrajectoryResult>"
  "acl_msgs/BroadcastTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BroadcastTrajectoryResult)))
  "Returns string type for a message object of type 'BroadcastTrajectoryResult"
  "acl_msgs/BroadcastTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BroadcastTrajectoryResult>)))
  "Returns md5sum for a message object of type '<BroadcastTrajectoryResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BroadcastTrajectoryResult)))
  "Returns md5sum for a message object of type 'BroadcastTrajectoryResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BroadcastTrajectoryResult>)))
  "Returns full string definition for message of type '<BroadcastTrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BroadcastTrajectoryResult)))
  "Returns full string definition for message of type 'BroadcastTrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BroadcastTrajectoryResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BroadcastTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'BroadcastTrajectoryResult
    (cl:cons ':success (success msg))
))
