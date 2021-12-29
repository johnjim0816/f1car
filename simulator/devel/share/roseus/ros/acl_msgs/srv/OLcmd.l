;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::OLcmd)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'OLcmd (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::OLCMD")
  (make-package "ACL_MSGS::OLCMD"))
(unless (find-package "ACL_MSGS::OLCMDREQUEST")
  (make-package "ACL_MSGS::OLCMDREQUEST"))
(unless (find-package "ACL_MSGS::OLCMDRESPONSE")
  (make-package "ACL_MSGS::OLCMDRESPONSE"))

(in-package "ROS")





(defclass acl_msgs::OLcmdRequest
  :super ros::object
  :slots (_time _max_omega _max_turn ))

(defmethod acl_msgs::OLcmdRequest
  (:init
   (&key
    ((:time __time) 0.0)
    ((:max_omega __max_omega) 0.0)
    ((:max_turn __max_turn) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _max_omega (float __max_omega))
   (setq _max_turn (float __max_turn))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:max_omega
   (&optional __max_omega)
   (if __max_omega (setq _max_omega __max_omega)) _max_omega)
  (:max_turn
   (&optional __max_turn)
   (if __max_turn (setq _max_turn __max_turn)) _max_turn)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64 _max_omega
    8
    ;; float64 _max_turn
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_omega
       (sys::poke _max_omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_turn
       (sys::poke _max_turn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_omega
     (setq _max_omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_turn
     (setq _max_turn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass acl_msgs::OLcmdResponse
  :super ros::object
  :slots (_finish ))

(defmethod acl_msgs::OLcmdResponse
  (:init
   (&key
    ((:finish __finish) nil)
    )
   (send-super :init)
   (setq _finish __finish)
   self)
  (:finish
   (&optional (__finish :null))
   (if (not (eq __finish :null)) (setq _finish __finish)) _finish)
  (:serialization-length
   ()
   (+
    ;; bool _finish
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finish
       (if _finish (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finish
     (setq _finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::OLcmd
  :super ros::object
  :slots ())

(setf (get acl_msgs::OLcmd :md5sum-) "b6d83d7c503466443ff05073f46784d7")
(setf (get acl_msgs::OLcmd :datatype-) "acl_msgs/OLcmd")
(setf (get acl_msgs::OLcmd :request) acl_msgs::OLcmdRequest)
(setf (get acl_msgs::OLcmd :response) acl_msgs::OLcmdResponse)

(defmethod acl_msgs::OLcmdRequest
  (:response () (instance acl_msgs::OLcmdResponse :init)))

(setf (get acl_msgs::OLcmdRequest :md5sum-) "b6d83d7c503466443ff05073f46784d7")
(setf (get acl_msgs::OLcmdRequest :datatype-) "acl_msgs/OLcmdRequest")
(setf (get acl_msgs::OLcmdRequest :definition-)
      "float64 time
float64 max_omega
float64 max_turn
---
bool finish
")

(setf (get acl_msgs::OLcmdResponse :md5sum-) "b6d83d7c503466443ff05073f46784d7")
(setf (get acl_msgs::OLcmdResponse :datatype-) "acl_msgs/OLcmdResponse")
(setf (get acl_msgs::OLcmdResponse :definition-)
      "float64 time
float64 max_omega
float64 max_turn
---
bool finish
")



(provide :acl_msgs/OLcmd "b6d83d7c503466443ff05073f46784d7")


