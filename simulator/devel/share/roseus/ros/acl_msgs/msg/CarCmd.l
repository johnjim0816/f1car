;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::CarCmd)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'CarCmd (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CARCMD")
  (make-package "ACL_MSGS::CARCMD"))

(in-package "ROS")
;;//! \htmlinclude CarCmd.msg.html


(defclass acl_msgs::CarCmd
  :super ros::object
  :slots (_steering _throttle _drive ))

(defmethod acl_msgs::CarCmd
  (:init
   (&key
    ((:steering __steering) 0.0)
    ((:throttle __throttle) 0.0)
    ((:drive __drive) nil)
    )
   (send-super :init)
   (setq _steering (float __steering))
   (setq _throttle (float __throttle))
   (setq _drive __drive)
   self)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:drive
   (&optional (__drive :null))
   (if (not (eq __drive :null)) (setq _drive __drive)) _drive)
  (:serialization-length
   ()
   (+
    ;; float64 _steering
    8
    ;; float64 _throttle
    8
    ;; bool _drive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _drive
       (if _drive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _drive
     (setq _drive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get acl_msgs::CarCmd :md5sum-) "4ac2be4070d79fa054aff6c418b04022")
(setf (get acl_msgs::CarCmd :datatype-) "acl_msgs/CarCmd")
(setf (get acl_msgs::CarCmd :definition-)
      "float64 steering
float64 throttle
bool drive

")



(provide :acl_msgs/CarCmd "4ac2be4070d79fa054aff6c418b04022")


