;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadMode)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadMode (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADMODE")
  (make-package "ACL_MSGS::QUADMODE"))

(in-package "ROS")
;;//! \htmlinclude QuadMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_IDLE*" (find-package "ACL_MSGS::QUADMODE"))
(shadow '*MODE_IDLE* (find-package "ACL_MSGS::QUADMODE"))
(defconstant acl_msgs::QuadMode::*MODE_IDLE* 0)
(intern "*MODE_WAYPOINT*" (find-package "ACL_MSGS::QUADMODE"))
(shadow '*MODE_WAYPOINT* (find-package "ACL_MSGS::QUADMODE"))
(defconstant acl_msgs::QuadMode::*MODE_WAYPOINT* 1)
(intern "*MODE_ZERO_VEL*" (find-package "ACL_MSGS::QUADMODE"))
(shadow '*MODE_ZERO_VEL* (find-package "ACL_MSGS::QUADMODE"))
(defconstant acl_msgs::QuadMode::*MODE_ZERO_VEL* 2)
(intern "*MODE_DESCEND*" (find-package "ACL_MSGS::QUADMODE"))
(shadow '*MODE_DESCEND* (find-package "ACL_MSGS::QUADMODE"))
(defconstant acl_msgs::QuadMode::*MODE_DESCEND* 3)

(defun acl_msgs::QuadMode-to-symbol (const)
  (cond
        ((= const 0) 'acl_msgs::QuadMode::*MODE_IDLE*)
        ((= const 1) 'acl_msgs::QuadMode::*MODE_WAYPOINT*)
        ((= const 2) 'acl_msgs::QuadMode::*MODE_ZERO_VEL*)
        ((= const 3) 'acl_msgs::QuadMode::*MODE_DESCEND*)
        (t nil)))

(defclass acl_msgs::QuadMode
  :super ros::object
  :slots (_header _mode ))

(defmethod acl_msgs::QuadMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(setf (get acl_msgs::QuadMode :md5sum-) "28d3b3b34da558537ac7063523a951e7")
(setf (get acl_msgs::QuadMode :datatype-) "acl_msgs/QuadMode")
(setf (get acl_msgs::QuadMode :definition-)
      "Header header
int8 mode
int8 MODE_IDLE     = 0
int8 MODE_WAYPOINT = 1
int8 MODE_ZERO_VEL = 2
int8 MODE_DESCEND  = 3


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :acl_msgs/QuadMode "28d3b3b34da558537ac7063523a951e7")


