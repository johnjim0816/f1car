;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::ReturnToBase)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'ReturnToBase (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::RETURNTOBASE")
  (make-package "ACL_MSGS::RETURNTOBASE"))
(unless (find-package "ACL_MSGS::RETURNTOBASEREQUEST")
  (make-package "ACL_MSGS::RETURNTOBASEREQUEST"))
(unless (find-package "ACL_MSGS::RETURNTOBASERESPONSE")
  (make-package "ACL_MSGS::RETURNTOBASERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass acl_msgs::ReturnToBaseRequest
  :super ros::object
  :slots (_pose_init _twist_init _pose_goal _twist_goal ))

(defmethod acl_msgs::ReturnToBaseRequest
  (:init
   (&key
    ((:pose_init __pose_init) (instance geometry_msgs::Pose :init))
    ((:twist_init __twist_init) (instance geometry_msgs::Twist :init))
    ((:pose_goal __pose_goal) (instance geometry_msgs::Pose :init))
    ((:twist_goal __twist_goal) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _pose_init __pose_init)
   (setq _twist_init __twist_init)
   (setq _pose_goal __pose_goal)
   (setq _twist_goal __twist_goal)
   self)
  (:pose_init
   (&rest __pose_init)
   (if (keywordp (car __pose_init))
       (send* _pose_init __pose_init)
     (progn
       (if __pose_init (setq _pose_init (car __pose_init)))
       _pose_init)))
  (:twist_init
   (&rest __twist_init)
   (if (keywordp (car __twist_init))
       (send* _twist_init __twist_init)
     (progn
       (if __twist_init (setq _twist_init (car __twist_init)))
       _twist_init)))
  (:pose_goal
   (&rest __pose_goal)
   (if (keywordp (car __pose_goal))
       (send* _pose_goal __pose_goal)
     (progn
       (if __pose_goal (setq _pose_goal (car __pose_goal)))
       _pose_goal)))
  (:twist_goal
   (&rest __twist_goal)
   (if (keywordp (car __twist_goal))
       (send* _twist_goal __twist_goal)
     (progn
       (if __twist_goal (setq _twist_goal (car __twist_goal)))
       _twist_goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_init
    (send _pose_init :serialization-length)
    ;; geometry_msgs/Twist _twist_init
    (send _twist_init :serialization-length)
    ;; geometry_msgs/Pose _pose_goal
    (send _pose_goal :serialization-length)
    ;; geometry_msgs/Twist _twist_goal
    (send _twist_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_init
       (send _pose_init :serialize s)
     ;; geometry_msgs/Twist _twist_init
       (send _twist_init :serialize s)
     ;; geometry_msgs/Pose _pose_goal
       (send _pose_goal :serialize s)
     ;; geometry_msgs/Twist _twist_goal
       (send _twist_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_init
     (send _pose_init :deserialize buf ptr-) (incf ptr- (send _pose_init :serialization-length))
   ;; geometry_msgs/Twist _twist_init
     (send _twist_init :deserialize buf ptr-) (incf ptr- (send _twist_init :serialization-length))
   ;; geometry_msgs/Pose _pose_goal
     (send _pose_goal :deserialize buf ptr-) (incf ptr- (send _pose_goal :serialization-length))
   ;; geometry_msgs/Twist _twist_goal
     (send _twist_goal :deserialize buf ptr-) (incf ptr- (send _twist_goal :serialization-length))
   ;;
   self)
  )

(defclass acl_msgs::ReturnToBaseResponse
  :super ros::object
  :slots (_success ))

(defmethod acl_msgs::ReturnToBaseResponse
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

(defclass acl_msgs::ReturnToBase
  :super ros::object
  :slots ())

(setf (get acl_msgs::ReturnToBase :md5sum-) "c32c7657daad0d7f97bac883e5e34a75")
(setf (get acl_msgs::ReturnToBase :datatype-) "acl_msgs/ReturnToBase")
(setf (get acl_msgs::ReturnToBase :request) acl_msgs::ReturnToBaseRequest)
(setf (get acl_msgs::ReturnToBase :response) acl_msgs::ReturnToBaseResponse)

(defmethod acl_msgs::ReturnToBaseRequest
  (:response () (instance acl_msgs::ReturnToBaseResponse :init)))

(setf (get acl_msgs::ReturnToBaseRequest :md5sum-) "c32c7657daad0d7f97bac883e5e34a75")
(setf (get acl_msgs::ReturnToBaseRequest :datatype-) "acl_msgs/ReturnToBaseRequest")
(setf (get acl_msgs::ReturnToBaseRequest :definition-)
      "geometry_msgs/Pose pose_init
geometry_msgs/Twist twist_init
geometry_msgs/Pose pose_goal
geometry_msgs/Twist twist_goal

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
bool success
")

(setf (get acl_msgs::ReturnToBaseResponse :md5sum-) "c32c7657daad0d7f97bac883e5e34a75")
(setf (get acl_msgs::ReturnToBaseResponse :datatype-) "acl_msgs/ReturnToBaseResponse")
(setf (get acl_msgs::ReturnToBaseResponse :definition-)
      "geometry_msgs/Pose pose_init
geometry_msgs/Twist twist_init
geometry_msgs/Pose pose_goal
geometry_msgs/Twist twist_goal

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
bool success
")



(provide :acl_msgs/ReturnToBase "c32c7657daad0d7f97bac883e5e34a75")


