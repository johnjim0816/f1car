;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::SingleSegment)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'SingleSegment (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::SINGLESEGMENT")
  (make-package "ACL_MSGS::SINGLESEGMENT"))
(unless (find-package "ACL_MSGS::SINGLESEGMENTREQUEST")
  (make-package "ACL_MSGS::SINGLESEGMENTREQUEST"))
(unless (find-package "ACL_MSGS::SINGLESEGMENTRESPONSE")
  (make-package "ACL_MSGS::SINGLESEGMENTRESPONSE"))

(in-package "ROS")





(defclass acl_msgs::SingleSegmentRequest
  :super ros::object
  :slots (_s _r _v _reset_state _use_start_state _d ))

(defmethod acl_msgs::SingleSegmentRequest
  (:init
   (&key
    ((:s __s) (instance acl_msgs::SimpleState :init))
    ((:r __r) 0.0)
    ((:v __v) 0.0)
    ((:reset_state __reset_state) nil)
    ((:use_start_state __use_start_state) nil)
    ((:d __d) 0)
    )
   (send-super :init)
   (setq _s __s)
   (setq _r (float __r))
   (setq _v (float __v))
   (setq _reset_state __reset_state)
   (setq _use_start_state __use_start_state)
   (setq _d (round __d))
   self)
  (:s
   (&rest __s)
   (if (keywordp (car __s))
       (send* _s __s)
     (progn
       (if __s (setq _s (car __s)))
       _s)))
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:reset_state
   (&optional (__reset_state :null))
   (if (not (eq __reset_state :null)) (setq _reset_state __reset_state)) _reset_state)
  (:use_start_state
   (&optional (__use_start_state :null))
   (if (not (eq __use_start_state :null)) (setq _use_start_state __use_start_state)) _use_start_state)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/SimpleState _s
    (send _s :serialization-length)
    ;; float64 _r
    8
    ;; float64 _v
    8
    ;; bool _reset_state
    1
    ;; bool _use_start_state
    1
    ;; int64 _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/SimpleState _s
       (send _s :serialize s)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _reset_state
       (if _reset_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_start_state
       (if _use_start_state (write-byte -1 s) (write-byte 0 s))
     ;; int64 _d
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _d (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _d) (= (length (_d . bv)) 2)) ;; bignum
              (write-long (ash (elt (_d . bv) 0) 0) s)
              (write-long (ash (elt (_d . bv) 1) -1) s))
             ((and (class _d) (= (length (_d . bv)) 1)) ;; big1
              (write-long (elt (_d . bv) 0) s)
              (write-long (if (>= _d 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _d s)(write-long (if (>= _d 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/SimpleState _s
     (send _s :deserialize buf ptr-) (incf ptr- (send _s :serialization-length))
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _reset_state
     (setq _reset_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_start_state
     (setq _use_start_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _d
#+(or :alpha :irix6 :x86_64)
      (setf _d (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _d (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass acl_msgs::SingleSegmentResponse
  :super ros::object
  :slots (_s_prime _reward ))

(defmethod acl_msgs::SingleSegmentResponse
  (:init
   (&key
    ((:s_prime __s_prime) (instance acl_msgs::SimpleState :init))
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _s_prime __s_prime)
   (setq _reward (float __reward))
   self)
  (:s_prime
   (&rest __s_prime)
   (if (keywordp (car __s_prime))
       (send* _s_prime __s_prime)
     (progn
       (if __s_prime (setq _s_prime (car __s_prime)))
       _s_prime)))
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/SimpleState _s_prime
    (send _s_prime :serialization-length)
    ;; float64 _reward
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/SimpleState _s_prime
       (send _s_prime :serialize s)
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/SimpleState _s_prime
     (send _s_prime :deserialize buf ptr-) (incf ptr- (send _s_prime :serialization-length))
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass acl_msgs::SingleSegment
  :super ros::object
  :slots ())

(setf (get acl_msgs::SingleSegment :md5sum-) "c66573959adcbfed1484944f69febdbb")
(setf (get acl_msgs::SingleSegment :datatype-) "acl_msgs/SingleSegment")
(setf (get acl_msgs::SingleSegment :request) acl_msgs::SingleSegmentRequest)
(setf (get acl_msgs::SingleSegment :response) acl_msgs::SingleSegmentResponse)

(defmethod acl_msgs::SingleSegmentRequest
  (:response () (instance acl_msgs::SingleSegmentResponse :init)))

(setf (get acl_msgs::SingleSegmentRequest :md5sum-) "c66573959adcbfed1484944f69febdbb")
(setf (get acl_msgs::SingleSegmentRequest :datatype-) "acl_msgs/SingleSegmentRequest")
(setf (get acl_msgs::SingleSegmentRequest :definition-)
      "acl_msgs/SimpleState s
float64 r
float64 v
bool reset_state
bool use_start_state
int64 d

================================================================================
MSG: acl_msgs/SimpleState
int64 segment
float64 x
float64 y
float64 psi
float64 omega
float64 Vx
float64 Vy
float64 psidot
int64 slipping
---
acl_msgs/SimpleState s_prime
float64 reward

================================================================================
MSG: acl_msgs/SimpleState
int64 segment
float64 x
float64 y
float64 psi
float64 omega
float64 Vx
float64 Vy
float64 psidot
int64 slipping
")

(setf (get acl_msgs::SingleSegmentResponse :md5sum-) "c66573959adcbfed1484944f69febdbb")
(setf (get acl_msgs::SingleSegmentResponse :datatype-) "acl_msgs/SingleSegmentResponse")
(setf (get acl_msgs::SingleSegmentResponse :definition-)
      "acl_msgs/SimpleState s
float64 r
float64 v
bool reset_state
bool use_start_state
int64 d

================================================================================
MSG: acl_msgs/SimpleState
int64 segment
float64 x
float64 y
float64 psi
float64 omega
float64 Vx
float64 Vy
float64 psidot
int64 slipping
---
acl_msgs/SimpleState s_prime
float64 reward

================================================================================
MSG: acl_msgs/SimpleState
int64 segment
float64 x
float64 y
float64 psi
float64 omega
float64 Vx
float64 Vy
float64 psidot
int64 slipping
")



(provide :acl_msgs/SingleSegment "c66573959adcbfed1484944f69febdbb")


