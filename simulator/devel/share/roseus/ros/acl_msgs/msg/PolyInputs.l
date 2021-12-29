;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::PolyInputs)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'PolyInputs (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::POLYINPUTS")
  (make-package "ACL_MSGS::POLYINPUTS"))

(in-package "ROS")
;;//! \htmlinclude PolyInputs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::PolyInputs
  :super ros::object
  :slots (_n _wp _wp0 _wpf _wp_vel _wp_elm _tt ))

(defmethod acl_msgs::PolyInputs
  (:init
   (&key
    ((:n __n) 0)
    ((:wp __wp) (instance std_msgs::Float64MultiArray :init))
    ((:wp0 __wp0) (instance std_msgs::Float64MultiArray :init))
    ((:wpf __wpf) (instance std_msgs::Float64MultiArray :init))
    ((:wp_vel __wp_vel) (instance std_msgs::Float64MultiArray :init))
    ((:wp_elm __wp_elm) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tt __tt) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _n (round __n))
   (setq _wp __wp)
   (setq _wp0 __wp0)
   (setq _wpf __wpf)
   (setq _wp_vel __wp_vel)
   (setq _wp_elm __wp_elm)
   (setq _tt __tt)
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:wp
   (&rest __wp)
   (if (keywordp (car __wp))
       (send* _wp __wp)
     (progn
       (if __wp (setq _wp (car __wp)))
       _wp)))
  (:wp0
   (&rest __wp0)
   (if (keywordp (car __wp0))
       (send* _wp0 __wp0)
     (progn
       (if __wp0 (setq _wp0 (car __wp0)))
       _wp0)))
  (:wpf
   (&rest __wpf)
   (if (keywordp (car __wpf))
       (send* _wpf __wpf)
     (progn
       (if __wpf (setq _wpf (car __wpf)))
       _wpf)))
  (:wp_vel
   (&rest __wp_vel)
   (if (keywordp (car __wp_vel))
       (send* _wp_vel __wp_vel)
     (progn
       (if __wp_vel (setq _wp_vel (car __wp_vel)))
       _wp_vel)))
  (:wp_elm
   (&optional __wp_elm)
   (if __wp_elm (setq _wp_elm __wp_elm)) _wp_elm)
  (:tt
   (&optional __tt)
   (if __tt (setq _tt __tt)) _tt)
  (:serialization-length
   ()
   (+
    ;; int64 _n
    8
    ;; std_msgs/Float64MultiArray _wp
    (send _wp :serialization-length)
    ;; std_msgs/Float64MultiArray _wp0
    (send _wp0 :serialization-length)
    ;; std_msgs/Float64MultiArray _wpf
    (send _wpf :serialization-length)
    ;; std_msgs/Float64MultiArray _wp_vel
    (send _wp_vel :serialization-length)
    ;; int64[] _wp_elm
    (* 8    (length _wp_elm)) 4
    ;; float64[] _tt
    (* 8    (length _tt)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _n
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _n (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _n) (= (length (_n . bv)) 2)) ;; bignum
              (write-long (ash (elt (_n . bv) 0) 0) s)
              (write-long (ash (elt (_n . bv) 1) -1) s))
             ((and (class _n) (= (length (_n . bv)) 1)) ;; big1
              (write-long (elt (_n . bv) 0) s)
              (write-long (if (>= _n 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _n s)(write-long (if (>= _n 0) 0 #xffffffff) s)))
     ;; std_msgs/Float64MultiArray _wp
       (send _wp :serialize s)
     ;; std_msgs/Float64MultiArray _wp0
       (send _wp0 :serialize s)
     ;; std_msgs/Float64MultiArray _wpf
       (send _wpf :serialize s)
     ;; std_msgs/Float64MultiArray _wp_vel
       (send _wp_vel :serialize s)
     ;; int64[] _wp_elm
     (write-long (length _wp_elm) s)
     (dotimes (i (length _wp_elm))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _wp_elm i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _wp_elm i)) (= (length ((elt _wp_elm i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _wp_elm i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _wp_elm i) . bv) 1) -1) s))
             ((and (class (elt _wp_elm i)) (= (length ((elt _wp_elm i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _wp_elm i) . bv) 0) s)
              (write-long (if (>= (elt _wp_elm i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _wp_elm i) s)(write-long (if (>= (elt _wp_elm i) 0) 0 #xffffffff) s)))
       )
     ;; float64[] _tt
     (write-long (length _tt) s)
     (dotimes (i (length _tt))
       (sys::poke (elt _tt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _n
#+(or :alpha :irix6 :x86_64)
      (setf _n (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _n (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; std_msgs/Float64MultiArray _wp
     (send _wp :deserialize buf ptr-) (incf ptr- (send _wp :serialization-length))
   ;; std_msgs/Float64MultiArray _wp0
     (send _wp0 :deserialize buf ptr-) (incf ptr- (send _wp0 :serialization-length))
   ;; std_msgs/Float64MultiArray _wpf
     (send _wpf :deserialize buf ptr-) (incf ptr- (send _wpf :serialization-length))
   ;; std_msgs/Float64MultiArray _wp_vel
     (send _wp_vel :deserialize buf ptr-) (incf ptr- (send _wp_vel :serialization-length))
   ;; int64[] _wp_elm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wp_elm (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _wp_elm i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _wp_elm i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; float64[] _tt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get acl_msgs::PolyInputs :md5sum-) "1bda35eaa32e8a9d7e75090c28023cbc")
(setf (get acl_msgs::PolyInputs :datatype-) "acl_msgs/PolyInputs")
(setf (get acl_msgs::PolyInputs :definition-)
      "# Definition of polynomial inputs for trajectory generation.

int64 n # polynomial order (n=4 -> cubic spline)
std_msgs/Float64MultiArray wp # x,y,z waypoints
std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate
std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate
std_msgs/Float64MultiArray wp_vel # intermediate velocity commands
int64[] wp_elm # waypoints at which the wp_vel should be applied
float64[] tt # time segments between waypoints (relative, not cumulative)
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
uint32 stride  # stride of given dimension
")



(provide :acl_msgs/PolyInputs "1bda35eaa32e8a9d7e75090c28023cbc")


