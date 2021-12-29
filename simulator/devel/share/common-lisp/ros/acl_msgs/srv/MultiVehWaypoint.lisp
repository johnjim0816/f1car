; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude MultiVehWaypoint-request.msg.html

(cl:defclass <MultiVehWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((final_positions
    :reader final_positions
    :initarg :final_positions
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass MultiVehWaypoint-request (<MultiVehWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehWaypoint-request> is deprecated: use acl_msgs-srv:MultiVehWaypoint-request instead.")))

(cl:ensure-generic-function 'final_positions-val :lambda-list '(m))
(cl:defmethod final_positions-val ((m <MultiVehWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:final_positions-val is deprecated.  Use acl_msgs-srv:final_positions instead.")
  (final_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehWaypoint-request>) ostream)
  "Serializes a message object of type '<MultiVehWaypoint-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'final_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'final_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehWaypoint-request>) istream)
  "Deserializes a message object of type '<MultiVehWaypoint-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'final_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'final_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehWaypoint-request>)))
  "Returns string type for a service object of type '<MultiVehWaypoint-request>"
  "acl_msgs/MultiVehWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehWaypoint-request)))
  "Returns string type for a service object of type 'MultiVehWaypoint-request"
  "acl_msgs/MultiVehWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehWaypoint-request>)))
  "Returns md5sum for a message object of type '<MultiVehWaypoint-request>"
  "fc70ffdb5fbac9cb6374d980c2d52b88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehWaypoint-request)))
  "Returns md5sum for a message object of type 'MultiVehWaypoint-request"
  "fc70ffdb5fbac9cb6374d980c2d52b88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehWaypoint-request>)))
  "Returns full string definition for message of type '<MultiVehWaypoint-request>"
  (cl:format cl:nil "geometry_msgs/Vector3[] final_positions~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehWaypoint-request)))
  "Returns full string definition for message of type 'MultiVehWaypoint-request"
  (cl:format cl:nil "geometry_msgs/Vector3[] final_positions~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehWaypoint-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'final_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehWaypoint-request
    (cl:cons ':final_positions (final_positions msg))
))
;//! \htmlinclude MultiVehWaypoint-response.msg.html

(cl:defclass <MultiVehWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((converged
    :reader converged
    :initarg :converged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MultiVehWaypoint-response (<MultiVehWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehWaypoint-response> is deprecated: use acl_msgs-srv:MultiVehWaypoint-response instead.")))

(cl:ensure-generic-function 'converged-val :lambda-list '(m))
(cl:defmethod converged-val ((m <MultiVehWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:converged-val is deprecated.  Use acl_msgs-srv:converged instead.")
  (converged m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehWaypoint-response>) ostream)
  "Serializes a message object of type '<MultiVehWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'converged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehWaypoint-response>) istream)
  "Deserializes a message object of type '<MultiVehWaypoint-response>"
    (cl:setf (cl:slot-value msg 'converged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehWaypoint-response>)))
  "Returns string type for a service object of type '<MultiVehWaypoint-response>"
  "acl_msgs/MultiVehWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehWaypoint-response)))
  "Returns string type for a service object of type 'MultiVehWaypoint-response"
  "acl_msgs/MultiVehWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehWaypoint-response>)))
  "Returns md5sum for a message object of type '<MultiVehWaypoint-response>"
  "fc70ffdb5fbac9cb6374d980c2d52b88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehWaypoint-response)))
  "Returns md5sum for a message object of type 'MultiVehWaypoint-response"
  "fc70ffdb5fbac9cb6374d980c2d52b88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehWaypoint-response>)))
  "Returns full string definition for message of type '<MultiVehWaypoint-response>"
  (cl:format cl:nil "bool converged~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehWaypoint-response)))
  "Returns full string definition for message of type 'MultiVehWaypoint-response"
  (cl:format cl:nil "bool converged~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehWaypoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehWaypoint-response
    (cl:cons ':converged (converged msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultiVehWaypoint)))
  'MultiVehWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultiVehWaypoint)))
  'MultiVehWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehWaypoint)))
  "Returns string type for a service object of type '<MultiVehWaypoint>"
  "acl_msgs/MultiVehWaypoint")