; Auto-generated. Do not edit!


(cl:in-package acl_msgs-msg)


;//! \htmlinclude QuadCntrl.msg.html

(cl:defclass <QuadCntrl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pose_actual
    :reader pose_actual
    :initarg :pose_actual
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (twist_actual
    :reader twist_actual
    :initarg :twist_actual
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (rpy
    :reader rpy
    :initarg :rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy_actual
    :reader rpy_actual
    :initarg :rpy_actual
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel_fb
    :reader accel_fb
    :initarg :accel_fb
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk_fb
    :reader jerk_fb
    :initarg :jerk_fb
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pos_integrator
    :reader pos_integrator
    :initarg :pos_integrator
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel_integrator
    :reader vel_integrator
    :initarg :vel_integrator
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (s
    :reader s
    :initarg :s
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (c
    :reader c
    :initarg :c
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (phi
    :reader phi
    :initarg :phi
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (phi_m
    :reader phi_m
    :initarg :phi_m
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (f_total
    :reader f_total
    :initarg :f_total
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (att_status
    :reader att_status
    :initarg :att_status
    :type cl:fixnum
    :initform 0)
   (vicon_time
    :reader vicon_time
    :initarg :vicon_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadCntrl (<QuadCntrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadCntrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadCntrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acl_msgs-msg:<QuadCntrl> is deprecated: use acl_msgs-msg:QuadCntrl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:header-val is deprecated.  Use acl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pose-val is deprecated.  Use acl_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'pose_actual-val :lambda-list '(m))
(cl:defmethod pose_actual-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pose_actual-val is deprecated.  Use acl_msgs-msg:pose_actual instead.")
  (pose_actual m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:twist-val is deprecated.  Use acl_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'twist_actual-val :lambda-list '(m))
(cl:defmethod twist_actual-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:twist_actual-val is deprecated.  Use acl_msgs-msg:twist_actual instead.")
  (twist_actual m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:rpy-val is deprecated.  Use acl_msgs-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'rpy_actual-val :lambda-list '(m))
(cl:defmethod rpy_actual-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:rpy_actual-val is deprecated.  Use acl_msgs-msg:rpy_actual instead.")
  (rpy_actual m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:accel-val is deprecated.  Use acl_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'accel_fb-val :lambda-list '(m))
(cl:defmethod accel_fb-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:accel_fb-val is deprecated.  Use acl_msgs-msg:accel_fb instead.")
  (accel_fb m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:jerk-val is deprecated.  Use acl_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'jerk_fb-val :lambda-list '(m))
(cl:defmethod jerk_fb-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:jerk_fb-val is deprecated.  Use acl_msgs-msg:jerk_fb instead.")
  (jerk_fb m))

(cl:ensure-generic-function 'pos_integrator-val :lambda-list '(m))
(cl:defmethod pos_integrator-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:pos_integrator-val is deprecated.  Use acl_msgs-msg:pos_integrator instead.")
  (pos_integrator m))

(cl:ensure-generic-function 'vel_integrator-val :lambda-list '(m))
(cl:defmethod vel_integrator-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:vel_integrator-val is deprecated.  Use acl_msgs-msg:vel_integrator instead.")
  (vel_integrator m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:s-val is deprecated.  Use acl_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:c-val is deprecated.  Use acl_msgs-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:phi-val is deprecated.  Use acl_msgs-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'phi_m-val :lambda-list '(m))
(cl:defmethod phi_m-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:phi_m-val is deprecated.  Use acl_msgs-msg:phi_m instead.")
  (phi_m m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:u-val is deprecated.  Use acl_msgs-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:a-val is deprecated.  Use acl_msgs-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:b-val is deprecated.  Use acl_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:yaw-val is deprecated.  Use acl_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'f_total-val :lambda-list '(m))
(cl:defmethod f_total-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:f_total-val is deprecated.  Use acl_msgs-msg:f_total instead.")
  (f_total m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:throttle-val is deprecated.  Use acl_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'att_status-val :lambda-list '(m))
(cl:defmethod att_status-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:att_status-val is deprecated.  Use acl_msgs-msg:att_status instead.")
  (att_status m))

(cl:ensure-generic-function 'vicon_time-val :lambda-list '(m))
(cl:defmethod vicon_time-val ((m <QuadCntrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acl_msgs-msg:vicon_time-val is deprecated.  Use acl_msgs-msg:vicon_time instead.")
  (vicon_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadCntrl>) ostream)
  "Serializes a message object of type '<QuadCntrl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy_actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel_fb) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk_fb) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_integrator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_integrator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'c) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'phi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'phi_m) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'f_total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'att_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vicon_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadCntrl>) istream)
  "Deserializes a message object of type '<QuadCntrl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy_actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel_fb) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk_fb) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_integrator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_integrator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'c) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'phi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'phi_m) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_total) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'att_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vicon_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadCntrl>)))
  "Returns string type for a message object of type '<QuadCntrl>"
  "acl_msgs/QuadCntrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadCntrl)))
  "Returns string type for a message object of type 'QuadCntrl"
  "acl_msgs/QuadCntrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadCntrl>)))
  "Returns md5sum for a message object of type '<QuadCntrl>"
  "73822b1fb2aea2756d0f5f88004413c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadCntrl)))
  "Returns md5sum for a message object of type 'QuadCntrl"
  "73822b1fb2aea2756d0f5f88004413c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadCntrl>)))
  "Returns full string definition for message of type '<QuadCntrl>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%geometry_msgs/Pose pose_actual~%geometry_msgs/Twist twist~%geometry_msgs/Twist twist_actual~%geometry_msgs/Vector3 rpy~%geometry_msgs/Vector3 rpy_actual~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 accel_fb~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 jerk_fb~%geometry_msgs/Vector3 pos_integrator~%geometry_msgs/Vector3 vel_integrator~%geometry_msgs/Vector3 s~%geometry_msgs/Vector3 c~%geometry_msgs/Vector3 phi~%geometry_msgs/Vector3 phi_m~%float64 u~%float64 a~%float64 b~%float64 yaw~%float64 f_total~%float64 throttle~%int16 att_status~%float64 vicon_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadCntrl)))
  "Returns full string definition for message of type 'QuadCntrl"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%geometry_msgs/Pose pose_actual~%geometry_msgs/Twist twist~%geometry_msgs/Twist twist_actual~%geometry_msgs/Vector3 rpy~%geometry_msgs/Vector3 rpy_actual~%geometry_msgs/Vector3 accel~%geometry_msgs/Vector3 accel_fb~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 jerk_fb~%geometry_msgs/Vector3 pos_integrator~%geometry_msgs/Vector3 vel_integrator~%geometry_msgs/Vector3 s~%geometry_msgs/Vector3 c~%geometry_msgs/Vector3 phi~%geometry_msgs/Vector3 phi_m~%float64 u~%float64 a~%float64 b~%float64 yaw~%float64 f_total~%float64 throttle~%int16 att_status~%float64 vicon_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadCntrl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy_actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel_fb))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk_fb))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_integrator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_integrator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'c))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'phi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'phi_m))
     8
     8
     8
     8
     8
     8
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadCntrl>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadCntrl
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':pose_actual (pose_actual msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':twist_actual (twist_actual msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':rpy_actual (rpy_actual msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':accel_fb (accel_fb msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':jerk_fb (jerk_fb msg))
    (cl:cons ':pos_integrator (pos_integrator msg))
    (cl:cons ':vel_integrator (vel_integrator msg))
    (cl:cons ':s (s msg))
    (cl:cons ':c (c msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':phi_m (phi_m msg))
    (cl:cons ':u (u msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':f_total (f_total msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':att_status (att_status msg))
    (cl:cons ':vicon_time (vicon_time msg))
))
