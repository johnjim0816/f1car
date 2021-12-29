; Auto-generated. Do not edit!


(cl:in-package acl_msgs-srv)


;//! \htmlinclude MultiVehPreCompute-request.msg.html

(cl:defclass <MultiVehPreCompute-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass MultiVehPreCompute-request (<MultiVehPreCompute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehPreCompute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehPreCompute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehPreCompute-request> is deprecated: use acl_msgs-srv:MultiVehPreCompute-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <MultiVehPreCompute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:file_name-val is deprecated.  Use acl_msgs-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehPreCompute-request>) ostream)
  "Serializes a message object of type '<MultiVehPreCompute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehPreCompute-request>) istream)
  "Deserializes a message object of type '<MultiVehPreCompute-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehPreCompute-request>)))
  "Returns string type for a service object of type '<MultiVehPreCompute-request>"
  "acl_msgs/MultiVehPreComputeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehPreCompute-request)))
  "Returns string type for a service object of type 'MultiVehPreCompute-request"
  "acl_msgs/MultiVehPreComputeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehPreCompute-request>)))
  "Returns md5sum for a message object of type '<MultiVehPreCompute-request>"
  "f732d1c522c27f0f4a1daaa555df5861")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehPreCompute-request)))
  "Returns md5sum for a message object of type 'MultiVehPreCompute-request"
  "f732d1c522c27f0f4a1daaa555df5861")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehPreCompute-request>)))
  "Returns full string definition for message of type '<MultiVehPreCompute-request>"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehPreCompute-request)))
  "Returns full string definition for message of type 'MultiVehPreCompute-request"
  (cl:format cl:nil "string file_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehPreCompute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehPreCompute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehPreCompute-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude MultiVehPreCompute-response.msg.html

(cl:defclass <MultiVehPreCompute-response> (roslisp-msg-protocol:ros-message)
  ((converged
    :reader converged
    :initarg :converged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MultiVehPreCompute-response (<MultiVehPreCompute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVehPreCompute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVehPreCompute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-srv:<MultiVehPreCompute-response> is deprecated: use acl_msgs-srv:MultiVehPreCompute-response instead.")))

(cl:ensure-generic-function 'converged-val :lambda-list '(m))
(cl:defmethod converged-val ((m <MultiVehPreCompute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-srv:converged-val is deprecated.  Use acl_msgs-srv:converged instead.")
  (converged m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVehPreCompute-response>) ostream)
  "Serializes a message object of type '<MultiVehPreCompute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'converged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVehPreCompute-response>) istream)
  "Deserializes a message object of type '<MultiVehPreCompute-response>"
    (cl:setf (cl:slot-value msg 'converged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVehPreCompute-response>)))
  "Returns string type for a service object of type '<MultiVehPreCompute-response>"
  "acl_msgs/MultiVehPreComputeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehPreCompute-response)))
  "Returns string type for a service object of type 'MultiVehPreCompute-response"
  "acl_msgs/MultiVehPreComputeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVehPreCompute-response>)))
  "Returns md5sum for a message object of type '<MultiVehPreCompute-response>"
  "f732d1c522c27f0f4a1daaa555df5861")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVehPreCompute-response)))
  "Returns md5sum for a message object of type 'MultiVehPreCompute-response"
  "f732d1c522c27f0f4a1daaa555df5861")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVehPreCompute-response>)))
  "Returns full string definition for message of type '<MultiVehPreCompute-response>"
  (cl:format cl:nil "bool converged~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVehPreCompute-response)))
  "Returns full string definition for message of type 'MultiVehPreCompute-response"
  (cl:format cl:nil "bool converged~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVehPreCompute-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVehPreCompute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVehPreCompute-response
    (cl:cons ':converged (converged msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultiVehPreCompute)))
  'MultiVehPreCompute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultiVehPreCompute)))
  'MultiVehPreCompute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVehPreCompute)))
  "Returns string type for a service object of type '<MultiVehPreCompute>"
  "acl_msgs/MultiVehPreCompute")