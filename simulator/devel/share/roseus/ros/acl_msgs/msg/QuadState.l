;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadState)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadState (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADSTATE")
  (make-package "ACL_MSGS::QUADSTATE"))

(in-package "ROS")
;;//! \htmlinclude QuadState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NOT_FLYING*" (find-package "ACL_MSGS::QUADSTATE"))
(shadow '*NOT_FLYING* (find-package "ACL_MSGS::QUADSTATE"))
(defconstant acl_msgs::QuadState::*NOT_FLYING* 0)
(intern "*TAKEOFF*" (find-package "ACL_MSGS::QUADSTATE"))
(shadow '*TAKEOFF* (find-package "ACL_MSGS::QUADSTATE"))
(defconstant acl_msgs::QuadState::*TAKEOFF* 1)
(intern "*FLYING*" (find-package "ACL_MSGS::QUADSTATE"))
(shadow '*FLYING* (find-package "ACL_MSGS::QUADSTATE"))
(defconstant acl_msgs::QuadState::*FLYING* 2)
(intern "*LAND*" (find-package "ACL_MSGS::QUADSTATE"))
(shadow '*LAND* (find-package "ACL_MSGS::QUADSTATE"))
(defconstant acl_msgs::QuadState::*LAND* 3)
(intern "*GO*" (find-package "ACL_MSGS::QUADSTATE"))
(shadow '*GO* (find-package "ACL_MSGS::QUADSTATE"))
(defconstant acl_msgs::QuadState::*GO* 4)

(defun acl_msgs::QuadState-to-symbol (const)
  (cond
        ((= const 0) 'acl_msgs::QuadState::*NOT_FLYING*)
        ((= const 1) 'acl_msgs::QuadState::*TAKEOFF*)
        ((= const 2) 'acl_msgs::QuadState::*FLYING*)
        ((= const 3) 'acl_msgs::QuadState::*LAND*)
        ((= const 4) 'acl_msgs::QuadState::*GO*)
        (t nil)))

(defclass acl_msgs::QuadState
  :super ros::object
  :slots (_header _mode ))

(defmethod acl_msgs::QuadState
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
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::QuadState :md5sum-) "123ae2877a4abe01c500278be81cb18c")
(setf (get acl_msgs::QuadState :datatype-) "acl_msgs/QuadState")
(setf (get acl_msgs::QuadState :definition-)
      "Header header
uint8 mode
uint8 NOT_FLYING   = 0
uint8 TAKEOFF      = 1
uint8 FLYING       = 2
uint8 LAND	       = 3
uint8 GO 		   = 4

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



(provide :acl_msgs/QuadState "123ae2877a4abe01c500278be81cb18c")


