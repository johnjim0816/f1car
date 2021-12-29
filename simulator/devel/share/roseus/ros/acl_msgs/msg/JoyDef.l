;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::JoyDef)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'JoyDef (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::JOYDEF")
  (make-package "ACL_MSGS::JOYDEF"))

(in-package "ROS")
;;//! \htmlinclude JoyDef.msg.html


(intern "*A*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*A* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*A* 0)
(intern "*B*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*B* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*B* 1)
(intern "*X*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*X* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*X* 2)
(intern "*Y*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*Y* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*Y* 3)
(intern "*LB*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LB* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LB* 4)
(intern "*RB*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RB* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RB* 5)
(intern "*BACK*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*BACK* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*BACK* 6)
(intern "*START*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*START* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*START* 7)
(intern "*CENTER*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*CENTER* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*CENTER* 8)
(intern "*LS*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LS* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LS* 9)
(intern "*RS*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RS* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RS* 10)
(intern "*LEFT*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LEFT* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LEFT* 11)
(intern "*RIGHT*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RIGHT* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RIGHT* 12)
(intern "*UP*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*UP* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*UP* 13)
(intern "*DOWN*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*DOWN* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*DOWN* 14)
(intern "*LEFT_X*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LEFT_X* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LEFT_X* 0)
(intern "*LEFT_Y*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LEFT_Y* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LEFT_Y* 1)
(intern "*LT*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*LT* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*LT* 2)
(intern "*RIGHT_X*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RIGHT_X* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RIGHT_X* 3)
(intern "*RIGHT_Y*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RIGHT_Y* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RIGHT_Y* 4)
(intern "*RT*" (find-package "ACL_MSGS::JOYDEF"))
(shadow '*RT* (find-package "ACL_MSGS::JOYDEF"))
(defconstant acl_msgs::JoyDef::*RT* 5)

(defun acl_msgs::JoyDef-to-symbol (const)
  (cond
        ((= const 0) 'acl_msgs::JoyDef::*A*)
        ((= const 1) 'acl_msgs::JoyDef::*B*)
        ((= const 2) 'acl_msgs::JoyDef::*X*)
        ((= const 3) 'acl_msgs::JoyDef::*Y*)
        ((= const 4) 'acl_msgs::JoyDef::*LB*)
        ((= const 5) 'acl_msgs::JoyDef::*RB*)
        ((= const 6) 'acl_msgs::JoyDef::*BACK*)
        ((= const 7) 'acl_msgs::JoyDef::*START*)
        ((= const 8) 'acl_msgs::JoyDef::*CENTER*)
        ((= const 9) 'acl_msgs::JoyDef::*LS*)
        ((= const 10) 'acl_msgs::JoyDef::*RS*)
        ((= const 11) 'acl_msgs::JoyDef::*LEFT*)
        ((= const 12) 'acl_msgs::JoyDef::*RIGHT*)
        ((= const 13) 'acl_msgs::JoyDef::*UP*)
        ((= const 14) 'acl_msgs::JoyDef::*DOWN*)
        ((= const 0) 'acl_msgs::JoyDef::*LEFT_X*)
        ((= const 1) 'acl_msgs::JoyDef::*LEFT_Y*)
        ((= const 2) 'acl_msgs::JoyDef::*LT*)
        ((= const 3) 'acl_msgs::JoyDef::*RIGHT_X*)
        ((= const 4) 'acl_msgs::JoyDef::*RIGHT_Y*)
        ((= const 5) 'acl_msgs::JoyDef::*RT*)
        (t nil)))

(defclass acl_msgs::JoyDef
  :super ros::object
  :slots ())

(defmethod acl_msgs::JoyDef
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get acl_msgs::JoyDef :md5sum-) "e5483257fd0a1adbc2dd471d331e6470")
(setf (get acl_msgs::JoyDef :datatype-) "acl_msgs/JoyDef")
(setf (get acl_msgs::JoyDef :definition-)
      "# Message defining constants for the wireless joysticks used by ACL

# buttons
int64 A=0
int64 B=1
int64 X=2
int64 Y=3
int64 LB=4
int64 RB=5
int64 BACK=6
int64 START=7
int64 CENTER=8 # center 'on' button
int64 LS=9 # left joystick
int64 RS=10 # right joystick
int64 LEFT=11
int64 RIGHT=12
int64 UP=13
int64 DOWN=14

# axes
int64 LEFT_X=0
int64 LEFT_Y=1
int64 LT=2
int64 RIGHT_X=3
int64 RIGHT_Y=4
int64 RT=5

")



(provide :acl_msgs/JoyDef "e5483257fd0a1adbc2dd471d331e6470")


