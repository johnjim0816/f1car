;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::MultiVehPreCompute)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'MultiVehPreCompute (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::MULTIVEHPRECOMPUTE")
  (make-package "ACL_MSGS::MULTIVEHPRECOMPUTE"))
(unless (find-package "ACL_MSGS::MULTIVEHPRECOMPUTEREQUEST")
  (make-package "ACL_MSGS::MULTIVEHPRECOMPUTEREQUEST"))
(unless (find-package "ACL_MSGS::MULTIVEHPRECOMPUTERESPONSE")
  (make-package "ACL_MSGS::MULTIVEHPRECOMPUTERESPONSE"))

(in-package "ROS")





(defclass acl_msgs::MultiVehPreComputeRequest
  :super ros::object
  :slots (_file_name ))

(defmethod acl_msgs::MultiVehPreComputeRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass acl_msgs::MultiVehPreComputeResponse
  :super ros::object
  :slots (_converged ))

(defmethod acl_msgs::MultiVehPreComputeResponse
  (:init
   (&key
    ((:converged __converged) nil)
    )
   (send-super :init)
   (setq _converged __converged)
   self)
  (:converged
   (&optional (__converged :null))
   (if (not (eq __converged :null)) (setq _converged __converged)) _converged)
  (:serialization-length
   ()
   (+
    ;; bool _converged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _converged
       (if _converged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _converged
     (setq _converged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::MultiVehPreCompute
  :super ros::object
  :slots ())

(setf (get acl_msgs::MultiVehPreCompute :md5sum-) "f732d1c522c27f0f4a1daaa555df5861")
(setf (get acl_msgs::MultiVehPreCompute :datatype-) "acl_msgs/MultiVehPreCompute")
(setf (get acl_msgs::MultiVehPreCompute :request) acl_msgs::MultiVehPreComputeRequest)
(setf (get acl_msgs::MultiVehPreCompute :response) acl_msgs::MultiVehPreComputeResponse)

(defmethod acl_msgs::MultiVehPreComputeRequest
  (:response () (instance acl_msgs::MultiVehPreComputeResponse :init)))

(setf (get acl_msgs::MultiVehPreComputeRequest :md5sum-) "f732d1c522c27f0f4a1daaa555df5861")
(setf (get acl_msgs::MultiVehPreComputeRequest :datatype-) "acl_msgs/MultiVehPreComputeRequest")
(setf (get acl_msgs::MultiVehPreComputeRequest :definition-)
      "string file_name
---
bool converged
")

(setf (get acl_msgs::MultiVehPreComputeResponse :md5sum-) "f732d1c522c27f0f4a1daaa555df5861")
(setf (get acl_msgs::MultiVehPreComputeResponse :datatype-) "acl_msgs/MultiVehPreComputeResponse")
(setf (get acl_msgs::MultiVehPreComputeResponse :definition-)
      "string file_name
---
bool converged
")



(provide :acl_msgs/MultiVehPreCompute "f732d1c522c27f0f4a1daaa555df5861")


