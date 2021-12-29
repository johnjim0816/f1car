;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::MultiVehWaypoint)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'MultiVehWaypoint (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::MULTIVEHWAYPOINT")
  (make-package "ACL_MSGS::MULTIVEHWAYPOINT"))
(unless (find-package "ACL_MSGS::MULTIVEHWAYPOINTREQUEST")
  (make-package "ACL_MSGS::MULTIVEHWAYPOINTREQUEST"))
(unless (find-package "ACL_MSGS::MULTIVEHWAYPOINTRESPONSE")
  (make-package "ACL_MSGS::MULTIVEHWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass acl_msgs::MultiVehWaypointRequest
  :super ros::object
  :slots (_final_positions ))

(defmethod acl_msgs::MultiVehWaypointRequest
  (:init
   (&key
    ((:final_positions __final_positions) ())
    )
   (send-super :init)
   (setq _final_positions __final_positions)
   self)
  (:final_positions
   (&rest __final_positions)
   (if (keywordp (car __final_positions))
       (send* _final_positions __final_positions)
     (progn
       (if __final_positions (setq _final_positions (car __final_positions)))
       _final_positions)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[] _final_positions
    (apply #'+ (send-all _final_positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[] _final_positions
     (write-long (length _final_positions) s)
     (dolist (elem _final_positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[] _final_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _final_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _final_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass acl_msgs::MultiVehWaypointResponse
  :super ros::object
  :slots (_converged ))

(defmethod acl_msgs::MultiVehWaypointResponse
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

(defclass acl_msgs::MultiVehWaypoint
  :super ros::object
  :slots ())

(setf (get acl_msgs::MultiVehWaypoint :md5sum-) "fc70ffdb5fbac9cb6374d980c2d52b88")
(setf (get acl_msgs::MultiVehWaypoint :datatype-) "acl_msgs/MultiVehWaypoint")
(setf (get acl_msgs::MultiVehWaypoint :request) acl_msgs::MultiVehWaypointRequest)
(setf (get acl_msgs::MultiVehWaypoint :response) acl_msgs::MultiVehWaypointResponse)

(defmethod acl_msgs::MultiVehWaypointRequest
  (:response () (instance acl_msgs::MultiVehWaypointResponse :init)))

(setf (get acl_msgs::MultiVehWaypointRequest :md5sum-) "fc70ffdb5fbac9cb6374d980c2d52b88")
(setf (get acl_msgs::MultiVehWaypointRequest :datatype-) "acl_msgs/MultiVehWaypointRequest")
(setf (get acl_msgs::MultiVehWaypointRequest :definition-)
      "geometry_msgs/Vector3[] final_positions

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool converged
")

(setf (get acl_msgs::MultiVehWaypointResponse :md5sum-) "fc70ffdb5fbac9cb6374d980c2d52b88")
(setf (get acl_msgs::MultiVehWaypointResponse :datatype-) "acl_msgs/MultiVehWaypointResponse")
(setf (get acl_msgs::MultiVehWaypointResponse :definition-)
      "geometry_msgs/Vector3[] final_positions

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool converged
")



(provide :acl_msgs/MultiVehWaypoint "fc70ffdb5fbac9cb6374d980c2d52b88")


