;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::ResetCar)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'ResetCar (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::RESETCAR")
  (make-package "ACL_MSGS::RESETCAR"))
(unless (find-package "ACL_MSGS::RESETCARREQUEST")
  (make-package "ACL_MSGS::RESETCARREQUEST"))
(unless (find-package "ACL_MSGS::RESETCARRESPONSE")
  (make-package "ACL_MSGS::RESETCARRESPONSE"))

(in-package "ROS")





(defclass acl_msgs::ResetCarRequest
  :super ros::object
  :slots (_r _v ))

(defmethod acl_msgs::ResetCarRequest
  (:init
   (&key
    ((:r __r) 0.0)
    ((:v __v) 0.0)
    )
   (send-super :init)
   (setq _r (float __r))
   (setq _v (float __v))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; float64 _r
    8
    ;; float64 _v
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass acl_msgs::ResetCarResponse
  :super ros::object
  :slots (_success ))

(defmethod acl_msgs::ResetCarResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::ResetCar
  :super ros::object
  :slots ())

(setf (get acl_msgs::ResetCar :md5sum-) "cc73949c39211cec69275b332eb717e0")
(setf (get acl_msgs::ResetCar :datatype-) "acl_msgs/ResetCar")
(setf (get acl_msgs::ResetCar :request) acl_msgs::ResetCarRequest)
(setf (get acl_msgs::ResetCar :response) acl_msgs::ResetCarResponse)

(defmethod acl_msgs::ResetCarRequest
  (:response () (instance acl_msgs::ResetCarResponse :init)))

(setf (get acl_msgs::ResetCarRequest :md5sum-) "cc73949c39211cec69275b332eb717e0")
(setf (get acl_msgs::ResetCarRequest :datatype-) "acl_msgs/ResetCarRequest")
(setf (get acl_msgs::ResetCarRequest :definition-)
      "float64 r
float64 v
---
bool success
")

(setf (get acl_msgs::ResetCarResponse :md5sum-) "cc73949c39211cec69275b332eb717e0")
(setf (get acl_msgs::ResetCarResponse :datatype-) "acl_msgs/ResetCarResponse")
(setf (get acl_msgs::ResetCarResponse :definition-)
      "float64 r
float64 v
---
bool success
")



(provide :acl_msgs/ResetCar "cc73949c39211cec69275b332eb717e0")


