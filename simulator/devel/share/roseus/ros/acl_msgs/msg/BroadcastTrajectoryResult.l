;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::BroadcastTrajectoryResult)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'BroadcastTrajectoryResult (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::BROADCASTTRAJECTORYRESULT")
  (make-package "ACL_MSGS::BROADCASTTRAJECTORYRESULT"))

(in-package "ROS")
;;//! \htmlinclude BroadcastTrajectoryResult.msg.html


(defclass acl_msgs::BroadcastTrajectoryResult
  :super ros::object
  :slots (_success ))

(defmethod acl_msgs::BroadcastTrajectoryResult
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

(setf (get acl_msgs::BroadcastTrajectoryResult :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get acl_msgs::BroadcastTrajectoryResult :datatype-) "acl_msgs/BroadcastTrajectoryResult")
(setf (get acl_msgs::BroadcastTrajectoryResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool success

")



(provide :acl_msgs/BroadcastTrajectoryResult "358e233cde0c8a8bcfea4ce193f8fc15")

