;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::MultiVehTakeoffLand)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'MultiVehTakeoffLand (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::MULTIVEHTAKEOFFLAND")
  (make-package "ACL_MSGS::MULTIVEHTAKEOFFLAND"))
(unless (find-package "ACL_MSGS::MULTIVEHTAKEOFFLANDREQUEST")
  (make-package "ACL_MSGS::MULTIVEHTAKEOFFLANDREQUEST"))
(unless (find-package "ACL_MSGS::MULTIVEHTAKEOFFLANDRESPONSE")
  (make-package "ACL_MSGS::MULTIVEHTAKEOFFLANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass acl_msgs::MultiVehTakeoffLandRequest
  :super ros::object
  :slots (_takeoff _use_current_pose _initial_pose ))

(defmethod acl_msgs::MultiVehTakeoffLandRequest
  (:init
   (&key
    ((:takeoff __takeoff) nil)
    ((:use_current_pose __use_current_pose) nil)
    ((:initial_pose __initial_pose) ())
    )
   (send-super :init)
   (setq _takeoff __takeoff)
   (setq _use_current_pose __use_current_pose)
   (setq _initial_pose __initial_pose)
   self)
  (:takeoff
   (&optional (__takeoff :null))
   (if (not (eq __takeoff :null)) (setq _takeoff __takeoff)) _takeoff)
  (:use_current_pose
   (&optional (__use_current_pose :null))
   (if (not (eq __use_current_pose :null)) (setq _use_current_pose __use_current_pose)) _use_current_pose)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; bool _takeoff
    1
    ;; bool _use_current_pose
    1
    ;; geometry_msgs/Pose[] _initial_pose
    (apply #'+ (send-all _initial_pose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _takeoff
       (if _takeoff (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_current_pose
       (if _use_current_pose (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose[] _initial_pose
     (write-long (length _initial_pose) s)
     (dolist (elem _initial_pose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _takeoff
     (setq _takeoff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_current_pose
     (setq _use_current_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose[] _initial_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initial_pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _initial_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass acl_msgs::MultiVehTakeoffLandResponse
  :super ros::object
  :slots (_done ))

(defmethod acl_msgs::MultiVehTakeoffLandResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass acl_msgs::MultiVehTakeoffLand
  :super ros::object
  :slots ())

(setf (get acl_msgs::MultiVehTakeoffLand :md5sum-) "27f425af94b703f836a37c2b21423b61")
(setf (get acl_msgs::MultiVehTakeoffLand :datatype-) "acl_msgs/MultiVehTakeoffLand")
(setf (get acl_msgs::MultiVehTakeoffLand :request) acl_msgs::MultiVehTakeoffLandRequest)
(setf (get acl_msgs::MultiVehTakeoffLand :response) acl_msgs::MultiVehTakeoffLandResponse)

(defmethod acl_msgs::MultiVehTakeoffLandRequest
  (:response () (instance acl_msgs::MultiVehTakeoffLandResponse :init)))

(setf (get acl_msgs::MultiVehTakeoffLandRequest :md5sum-) "27f425af94b703f836a37c2b21423b61")
(setf (get acl_msgs::MultiVehTakeoffLandRequest :datatype-) "acl_msgs/MultiVehTakeoffLandRequest")
(setf (get acl_msgs::MultiVehTakeoffLandRequest :definition-)
      "bool takeoff
bool use_current_pose
geometry_msgs/Pose[] initial_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool done
")

(setf (get acl_msgs::MultiVehTakeoffLandResponse :md5sum-) "27f425af94b703f836a37c2b21423b61")
(setf (get acl_msgs::MultiVehTakeoffLandResponse :datatype-) "acl_msgs/MultiVehTakeoffLandResponse")
(setf (get acl_msgs::MultiVehTakeoffLandResponse :definition-)
      "bool takeoff
bool use_current_pose
geometry_msgs/Pose[] initial_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool done
")



(provide :acl_msgs/MultiVehTakeoffLand "27f425af94b703f836a37c2b21423b61")


