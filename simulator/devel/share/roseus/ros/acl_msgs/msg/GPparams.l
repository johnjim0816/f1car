;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::GPparams)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'GPparams (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::GPPARAMS")
  (make-package "ACL_MSGS::GPPARAMS"))

(in-package "ROS")
;;//! \htmlinclude GPparams.msg.html


(defclass acl_msgs::GPparams
  :super ros::object
  :slots (_input _beta _iL2 ))

(defmethod acl_msgs::GPparams
  (:init
   (&key
    ((:input __input) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:beta __beta) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:iL2 __iL2) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _input __input)
   (setq _beta __beta)
   (setq _iL2 __iL2)
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:iL2
   (&optional __iL2)
   (if __iL2 (setq _iL2 __iL2)) _iL2)
  (:serialization-length
   ()
   (+
    ;; float64[] _input
    (* 8    (length _input)) 4
    ;; float64[] _beta
    (* 8    (length _beta)) 4
    ;; float64[] _iL2
    (* 8    (length _iL2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _input
     (write-long (length _input) s)
     (dotimes (i (length _input))
       (sys::poke (elt _input i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _beta
     (write-long (length _beta) s)
     (dotimes (i (length _beta))
       (sys::poke (elt _beta i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _iL2
     (write-long (length _iL2) s)
     (dotimes (i (length _iL2))
       (sys::poke (elt _iL2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _input i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _beta
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beta (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _beta i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _iL2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _iL2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _iL2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get acl_msgs::GPparams :md5sum-) "e690124aefed3e4ccb198c08430e0e06")
(setf (get acl_msgs::GPparams :datatype-) "acl_msgs/GPparams")
(setf (get acl_msgs::GPparams :definition-)
      "float64[] input
float64[] beta
float64[] iL2

")



(provide :acl_msgs/GPparams "e690124aefed3e4ccb198c08430e0e06")


