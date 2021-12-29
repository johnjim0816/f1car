;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::MissionMode)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'MissionMode (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::MISSIONMODE")
  (make-package "ACL_MSGS::MISSIONMODE"))

(in-package "ROS")
;;//! \htmlinclude MissionMode.msg.html


(defclass acl_msgs::MissionMode
  :super ros::object
  :slots (_START _END _KILL ))

(defmethod acl_msgs::MissionMode
  (:init
   (&key
    ((:START __START) nil)
    ((:END __END) nil)
    ((:KILL __KILL) nil)
    )
   (send-super :init)
   (setq _START __START)
   (setq _END __END)
   (setq _KILL __KILL)
   self)
  (:START
   (&optional (__START :null))
   (if (not (eq __START :null)) (setq _START __START)) _START)
  (:END
   (&optional (__END :null))
   (if (not (eq __END :null)) (setq _END __END)) _END)
  (:KILL
   (&optional (__KILL :null))
   (if (not (eq __KILL :null)) (setq _KILL __KILL)) _KILL)
  (:serialization-length
   ()
   (+
    ;; bool _START
    1
    ;; bool _END
    1
    ;; bool _KILL
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _START
       (if _START (write-byte -1 s) (write-byte 0 s))
     ;; bool _END
       (if _END (write-byte -1 s) (write-byte 0 s))
     ;; bool _KILL
       (if _KILL (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _START
     (setq _START (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _END
     (setq _END (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _KILL
     (setq _KILL (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::MissionMode :md5sum-) "735b6e363094cb9a1d391d118453bf2d")
(setf (get acl_msgs::MissionMode :datatype-) "acl_msgs/MissionMode")
(setf (get acl_msgs::MissionMode :definition-)
      "bool START
bool END
bool KILL
")



(provide :acl_msgs/MissionMode "735b6e363094cb9a1d391d118453bf2d")


