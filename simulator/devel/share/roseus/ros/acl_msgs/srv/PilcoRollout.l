;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::PilcoRollout)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'PilcoRollout (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::PILCOROLLOUT")
  (make-package "ACL_MSGS::PILCOROLLOUT"))
(unless (find-package "ACL_MSGS::PILCOROLLOUTREQUEST")
  (make-package "ACL_MSGS::PILCOROLLOUTREQUEST"))
(unless (find-package "ACL_MSGS::PILCOROLLOUTRESPONSE")
  (make-package "ACL_MSGS::PILCOROLLOUTRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::PilcoRolloutRequest
  :super ros::object
  :slots (_params _H _num_centers _D _E _rate _random _dy0 ))

(defmethod acl_msgs::PilcoRolloutRequest
  (:init
   (&key
    ((:params __params) ())
    ((:H __H) 0)
    ((:num_centers __num_centers) 0)
    ((:D __D) 0)
    ((:E __E) 0)
    ((:rate __rate) 0.0)
    ((:random __random) nil)
    ((:dy0 __dy0) 0.0)
    )
   (send-super :init)
   (setq _params __params)
   (setq _H (round __H))
   (setq _num_centers (round __num_centers))
   (setq _D (round __D))
   (setq _E (round __E))
   (setq _rate (float __rate))
   (setq _random __random)
   (setq _dy0 (float __dy0))
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:H
   (&optional __H)
   (if __H (setq _H __H)) _H)
  (:num_centers
   (&optional __num_centers)
   (if __num_centers (setq _num_centers __num_centers)) _num_centers)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:E
   (&optional __E)
   (if __E (setq _E __E)) _E)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:random
   (&optional (__random :null))
   (if (not (eq __random :null)) (setq _random __random)) _random)
  (:dy0
   (&optional __dy0)
   (if __dy0 (setq _dy0 __dy0)) _dy0)
  (:serialization-length
   ()
   (+
    ;; acl_msgs/GPparams[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ;; int64 _H
    8
    ;; int64 _num_centers
    8
    ;; int64 _D
    8
    ;; int64 _E
    8
    ;; float64 _rate
    8
    ;; bool _random
    1
    ;; float64 _dy0
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; acl_msgs/GPparams[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;; int64 _H
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _H (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _H) (= (length (_H . bv)) 2)) ;; bignum
              (write-long (ash (elt (_H . bv) 0) 0) s)
              (write-long (ash (elt (_H . bv) 1) -1) s))
             ((and (class _H) (= (length (_H . bv)) 1)) ;; big1
              (write-long (elt (_H . bv) 0) s)
              (write-long (if (>= _H 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _H s)(write-long (if (>= _H 0) 0 #xffffffff) s)))
     ;; int64 _num_centers
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_centers (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_centers) (= (length (_num_centers . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_centers . bv) 0) 0) s)
              (write-long (ash (elt (_num_centers . bv) 1) -1) s))
             ((and (class _num_centers) (= (length (_num_centers . bv)) 1)) ;; big1
              (write-long (elt (_num_centers . bv) 0) s)
              (write-long (if (>= _num_centers 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_centers s)(write-long (if (>= _num_centers 0) 0 #xffffffff) s)))
     ;; int64 _D
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _D (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _D) (= (length (_D . bv)) 2)) ;; bignum
              (write-long (ash (elt (_D . bv) 0) 0) s)
              (write-long (ash (elt (_D . bv) 1) -1) s))
             ((and (class _D) (= (length (_D . bv)) 1)) ;; big1
              (write-long (elt (_D . bv) 0) s)
              (write-long (if (>= _D 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _D s)(write-long (if (>= _D 0) 0 #xffffffff) s)))
     ;; int64 _E
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _E (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _E) (= (length (_E . bv)) 2)) ;; bignum
              (write-long (ash (elt (_E . bv) 0) 0) s)
              (write-long (ash (elt (_E . bv) 1) -1) s))
             ((and (class _E) (= (length (_E . bv)) 1)) ;; big1
              (write-long (elt (_E . bv) 0) s)
              (write-long (if (>= _E 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _E s)(write-long (if (>= _E 0) 0 #xffffffff) s)))
     ;; float64 _rate
       (sys::poke _rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _random
       (if _random (write-byte -1 s) (write-byte 0 s))
     ;; float64 _dy0
       (sys::poke _dy0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; acl_msgs/GPparams[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance acl_msgs::GPparams :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _H
#+(or :alpha :irix6 :x86_64)
      (setf _H (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _H (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _num_centers
#+(or :alpha :irix6 :x86_64)
      (setf _num_centers (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_centers (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _D
#+(or :alpha :irix6 :x86_64)
      (setf _D (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _D (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _E
#+(or :alpha :irix6 :x86_64)
      (setf _E (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _E (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _rate
     (setq _rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _random
     (setq _random (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _dy0
     (setq _dy0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass acl_msgs::PilcoRolloutResponse
  :super ros::object
  :slots (_x _y ))

(defmethod acl_msgs::PilcoRolloutResponse
  (:init
   (&key
    ((:x __x) (instance std_msgs::Float64MultiArray :init))
    ((:y __y) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _x
    (send _x :serialization-length)
    ;; std_msgs/Float64MultiArray _y
    (send _y :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _x
       (send _x :serialize s)
     ;; std_msgs/Float64MultiArray _y
       (send _y :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float64MultiArray _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;;
   self)
  )

(defclass acl_msgs::PilcoRollout
  :super ros::object
  :slots ())

(setf (get acl_msgs::PilcoRollout :md5sum-) "0eea5718b5de328911c85360216aff35")
(setf (get acl_msgs::PilcoRollout :datatype-) "acl_msgs/PilcoRollout")
(setf (get acl_msgs::PilcoRollout :request) acl_msgs::PilcoRolloutRequest)
(setf (get acl_msgs::PilcoRollout :response) acl_msgs::PilcoRolloutResponse)

(defmethod acl_msgs::PilcoRolloutRequest
  (:response () (instance acl_msgs::PilcoRolloutResponse :init)))

(setf (get acl_msgs::PilcoRolloutRequest :md5sum-) "0eea5718b5de328911c85360216aff35")
(setf (get acl_msgs::PilcoRolloutRequest :datatype-) "acl_msgs/PilcoRolloutRequest")
(setf (get acl_msgs::PilcoRolloutRequest :definition-)
      "acl_msgs/GPparams[] params
int64 H
int64 num_centers
int64 D
int64 E
float64 rate
bool random
float64 dy0

================================================================================
MSG: acl_msgs/GPparams
float64[] input
float64[] beta
float64[] iL2
---
std_msgs/Float64MultiArray x
std_msgs/Float64MultiArray y


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get acl_msgs::PilcoRolloutResponse :md5sum-) "0eea5718b5de328911c85360216aff35")
(setf (get acl_msgs::PilcoRolloutResponse :datatype-) "acl_msgs/PilcoRolloutResponse")
(setf (get acl_msgs::PilcoRolloutResponse :definition-)
      "acl_msgs/GPparams[] params
int64 H
int64 num_centers
int64 D
int64 E
float64 rate
bool random
float64 dy0

================================================================================
MSG: acl_msgs/GPparams
float64[] input
float64[] beta
float64[] iL2
---
std_msgs/Float64MultiArray x
std_msgs/Float64MultiArray y


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :acl_msgs/PilcoRollout "0eea5718b5de328911c85360216aff35")


