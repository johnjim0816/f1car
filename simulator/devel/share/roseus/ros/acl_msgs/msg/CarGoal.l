;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::CarGoal)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'CarGoal (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CARGOAL")
  (make-package "ACL_MSGS::CARGOAL"))

(in-package "ROS")
;;//! \htmlinclude CarGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::CarGoal
  :super ros::object
  :slots (_header _psi _r _v _e _reset_v_int ))

(defmethod acl_msgs::CarGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:psi __psi) 0.0)
    ((:r __r) 0.0)
    ((:v __v) 0.0)
    ((:e __e) 0.0)
    ((:reset_v_int __reset_v_int) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _psi (float __psi))
   (setq _r (float __r))
   (setq _v (float __v))
   (setq _e (float __e))
   (setq _reset_v_int __reset_v_int)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:reset_v_int
   (&optional (__reset_v_int :null))
   (if (not (eq __reset_v_int :null)) (setq _reset_v_int __reset_v_int)) _reset_v_int)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _psi
    8
    ;; float64 _r
    8
    ;; float64 _v
    8
    ;; float64 _e
    8
    ;; bool _reset_v_int
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _e
       (sys::poke _e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _reset_v_int
       (if _reset_v_int (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _e
     (setq _e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _reset_v_int
     (setq _reset_v_int (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::CarGoal :md5sum-) "17c45119fc0cd18a8ee744e3a5b15a39")
(setf (get acl_msgs::CarGoal :datatype-) "acl_msgs/CarGoal")
(setf (get acl_msgs::CarGoal :definition-)
      "Header header
float64 psi
float64 r
float64 v
float64 e
bool reset_v_int
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



(provide :acl_msgs/CarGoal "17c45119fc0cd18a8ee744e3a5b15a39")


