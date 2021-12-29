; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude MissionMode.msg.html

(cl:defclass <MissionMode> (roslisp-msg-protocol:ros-message)
  ((START
    :reader START
    :initarg :START
    :type cl:boolean
    :initform cl:nil)
   (END
    :reader END
    :initarg :END
    :type cl:boolean
    :initform cl:nil)
   (KILL
    :reader KILL
    :initarg :KILL
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionMode (<MissionMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<MissionMode> is deprecated: use acl_msgs-msg:MissionMode instead.")))

(cl:ensure-generic-function 'START-val :lambda-list '(m))
(cl:defmethod START-val ((m <MissionMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:START-val is deprecated.  Use acl_msgs-msg:START instead.")
  (START m))

(cl:ensure-generic-function 'END-val :lambda-list '(m))
(cl:defmethod END-val ((m <MissionMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:END-val is deprecated.  Use acl_msgs-msg:END instead.")
  (END m))

(cl:ensure-generic-function 'KILL-val :lambda-list '(m))
(cl:defmethod KILL-val ((m <MissionMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:KILL-val is deprecated.  Use acl_msgs-msg:KILL instead.")
  (KILL m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionMode>) ostream)
  "Serializes a message object of type '<MissionMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'START) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'END) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'KILL) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionMode>) istream)
  "Deserializes a message object of type '<MissionMode>"
    (cl:setf (cl:slot-value msg 'START) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'END) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'KILL) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionMode>)))
  "Returns string type for a message object of type '<MissionMode>"
  "acl_msgs/MissionMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionMode)))
  "Returns string type for a message object of type 'MissionMode"
  "acl_msgs/MissionMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionMode>)))
  "Returns md5sum for a message object of type '<MissionMode>"
  "735b6e363094cb9a1d391d118453bf2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionMode)))
  "Returns md5sum for a message object of type 'MissionMode"
  "735b6e363094cb9a1d391d118453bf2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionMode>)))
  "Returns full string definition for message of type '<MissionMode>"
  (cl:format cl:nil "bool START~%bool END~%bool KILL~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionMode)))
  "Returns full string definition for message of type 'MissionMode"
  (cl:format cl:nil "bool START~%bool END~%bool KILL~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionMode>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionMode>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionMode
    (cl:cons ':START (START msg))
    (cl:cons ':END (END msg))
    (cl:cons ':KILL (KILL msg))
))
