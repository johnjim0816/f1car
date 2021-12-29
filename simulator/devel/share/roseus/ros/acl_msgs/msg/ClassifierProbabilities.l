;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::ClassifierProbabilities)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'ClassifierProbabilities (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CLASSIFIERPROBABILITIES")
  (make-package "ACL_MSGS::CLASSIFIERPROBABILITIES"))

(in-package "ROS")
;;//! \htmlinclude ClassifierProbabilities.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::ClassifierProbabilities
  :super ros::object
  :slots (_header _probabilities _probabilities_raw _class_names ))

(defmethod acl_msgs::ClassifierProbabilities
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:probabilities __probabilities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:probabilities_raw __probabilities_raw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:class_names __class_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _probabilities __probabilities)
   (setq _probabilities_raw __probabilities_raw)
   (setq _class_names __class_names)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:probabilities
   (&optional __probabilities)
   (if __probabilities (setq _probabilities __probabilities)) _probabilities)
  (:probabilities_raw
   (&optional __probabilities_raw)
   (if __probabilities_raw (setq _probabilities_raw __probabilities_raw)) _probabilities_raw)
  (:class_names
   (&optional __class_names)
   (if __class_names (setq _class_names __class_names)) _class_names)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _probabilities
    (* 8    (length _probabilities)) 4
    ;; float64[] _probabilities_raw
    (* 8    (length _probabilities_raw)) 4
    ;; string[] _class_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _class_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _probabilities
     (write-long (length _probabilities) s)
     (dotimes (i (length _probabilities))
       (sys::poke (elt _probabilities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _probabilities_raw
     (write-long (length _probabilities_raw) s)
     (dotimes (i (length _probabilities_raw))
       (sys::poke (elt _probabilities_raw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _class_names
     (write-long (length _class_names) s)
     (dolist (elem _class_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _probabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _probabilities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _probabilities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _probabilities_raw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _probabilities_raw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _probabilities_raw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _class_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _class_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get acl_msgs::ClassifierProbabilities :md5sum-) "a18c7fe1b3d8f68005c144ab97a8ac7c")
(setf (get acl_msgs::ClassifierProbabilities :datatype-) "acl_msgs/ClassifierProbabilities")
(setf (get acl_msgs::ClassifierProbabilities :definition-)
      "Header header
float64[] probabilities
float64[] probabilities_raw
string[] class_names
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



(provide :acl_msgs/ClassifierProbabilities "a18c7fe1b3d8f68005c144ab97a8ac7c")


