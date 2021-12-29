;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::SingleTrack)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'SingleTrack (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::SINGLETRACK")
  (make-package "ACL_MSGS::SINGLETRACK"))
(unless (find-package "ACL_MSGS::SINGLETRACKREQUEST")
  (make-package "ACL_MSGS::SINGLETRACKREQUEST"))
(unless (find-package "ACL_MSGS::SINGLETRACKRESPONSE")
  (make-package "ACL_MSGS::SINGLETRACKRESPONSE"))

(in-package "ROS")





(defclass acl_msgs::SingleTrackRequest
  :super ros::object
  :slots (_xcross _t13 _t24 _num_laps ))

(defmethod acl_msgs::SingleTrackRequest
  (:init
   (&key
    ((:xcross __xcross) 0.0)
    ((:t13 __t13) 0.0)
    ((:t24 __t24) 0.0)
    ((:num_laps __num_laps) 0)
    )
   (send-super :init)
   (setq _xcross (float __xcross))
   (setq _t13 (float __t13))
   (setq _t24 (float __t24))
   (setq _num_laps (round __num_laps))
   self)
  (:xcross
   (&optional __xcross)
   (if __xcross (setq _xcross __xcross)) _xcross)
  (:t13
   (&optional __t13)
   (if __t13 (setq _t13 __t13)) _t13)
  (:t24
   (&optional __t24)
   (if __t24 (setq _t24 __t24)) _t24)
  (:num_laps
   (&optional __num_laps)
   (if __num_laps (setq _num_laps __num_laps)) _num_laps)
  (:serialization-length
   ()
   (+
    ;; float64 _xcross
    8
    ;; float64 _t13
    8
    ;; float64 _t24
    8
    ;; int64 _num_laps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xcross
       (sys::poke _xcross (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t13
       (sys::poke _t13 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t24
       (sys::poke _t24 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _num_laps
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_laps (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_laps) (= (length (_num_laps . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_laps . bv) 0) 0) s)
              (write-long (ash (elt (_num_laps . bv) 1) -1) s))
             ((and (class _num_laps) (= (length (_num_laps . bv)) 1)) ;; big1
              (write-long (elt (_num_laps . bv) 0) s)
              (write-long (if (>= _num_laps 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_laps s)(write-long (if (>= _num_laps 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xcross
     (setq _xcross (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t13
     (setq _t13 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t24
     (setq _t24 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _num_laps
#+(or :alpha :irix6 :x86_64)
      (setf _num_laps (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_laps (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass acl_msgs::SingleTrackResponse
  :super ros::object
  :slots (_reward ))

(defmethod acl_msgs::SingleTrackResponse
  (:init
   (&key
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _reward (float __reward))
   self)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; float64 _reward
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass acl_msgs::SingleTrack
  :super ros::object
  :slots ())

(setf (get acl_msgs::SingleTrack :md5sum-) "ebb6ffcb54323364a7c7cbbed4d8e73a")
(setf (get acl_msgs::SingleTrack :datatype-) "acl_msgs/SingleTrack")
(setf (get acl_msgs::SingleTrack :request) acl_msgs::SingleTrackRequest)
(setf (get acl_msgs::SingleTrack :response) acl_msgs::SingleTrackResponse)

(defmethod acl_msgs::SingleTrackRequest
  (:response () (instance acl_msgs::SingleTrackResponse :init)))

(setf (get acl_msgs::SingleTrackRequest :md5sum-) "ebb6ffcb54323364a7c7cbbed4d8e73a")
(setf (get acl_msgs::SingleTrackRequest :datatype-) "acl_msgs/SingleTrackRequest")
(setf (get acl_msgs::SingleTrackRequest :definition-)
      "float64 xcross
float64 t13
float64 t24
int64 num_laps
---
float64 reward
")

(setf (get acl_msgs::SingleTrackResponse :md5sum-) "ebb6ffcb54323364a7c7cbbed4d8e73a")
(setf (get acl_msgs::SingleTrackResponse :datatype-) "acl_msgs/SingleTrackResponse")
(setf (get acl_msgs::SingleTrackResponse :definition-)
      "float64 xcross
float64 t13
float64 t24
int64 num_laps
---
float64 reward
")



(provide :acl_msgs/SingleTrack "ebb6ffcb54323364a7c7cbbed4d8e73a")


