;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::QuadHealth)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'QuadHealth (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::QUADHEALTH")
  (make-package "ACL_MSGS::QUADHEALTH"))

(in-package "ROS")
;;//! \htmlinclude QuadHealth.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::QuadHealth
  :super ros::object
  :slots (_header _time_since_boot _dropped_packets _received_seq _voltage _current _temperature ))

(defmethod acl_msgs::QuadHealth
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_since_boot __time_since_boot) 0.0)
    ((:dropped_packets __dropped_packets) 0)
    ((:received_seq __received_seq) 0)
    ((:voltage __voltage) 0.0)
    ((:current __current) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_since_boot (float __time_since_boot))
   (setq _dropped_packets (round __dropped_packets))
   (setq _received_seq (round __received_seq))
   (setq _voltage (float __voltage))
   (setq _current __current)
   (setq _temperature __temperature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_since_boot
   (&optional __time_since_boot)
   (if __time_since_boot (setq _time_since_boot __time_since_boot)) _time_since_boot)
  (:dropped_packets
   (&optional __dropped_packets)
   (if __dropped_packets (setq _dropped_packets __dropped_packets)) _dropped_packets)
  (:received_seq
   (&optional __received_seq)
   (if __received_seq (setq _received_seq __received_seq)) _received_seq)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time_since_boot
    8
    ;; int64 _dropped_packets
    8
    ;; uint8 _received_seq
    1
    ;; float64 _voltage
    8
    ;; float64[4] _current
    (* 8    4)
    ;; float64[4] _temperature
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _time_since_boot
       (sys::poke _time_since_boot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _dropped_packets
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dropped_packets (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dropped_packets) (= (length (_dropped_packets . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dropped_packets . bv) 0) 0) s)
              (write-long (ash (elt (_dropped_packets . bv) 1) -1) s))
             ((and (class _dropped_packets) (= (length (_dropped_packets . bv)) 1)) ;; big1
              (write-long (elt (_dropped_packets . bv) 0) s)
              (write-long (if (>= _dropped_packets 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dropped_packets s)(write-long (if (>= _dropped_packets 0) 0 #xffffffff) s)))
     ;; uint8 _received_seq
       (write-byte _received_seq s)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[4] _current
     (dotimes (i 4)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _temperature
     (dotimes (i 4)
       (sys::poke (elt _temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time_since_boot
     (setq _time_since_boot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _dropped_packets
#+(or :alpha :irix6 :x86_64)
      (setf _dropped_packets (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dropped_packets (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _received_seq
     (setq _received_seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[4] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _temperature
   (dotimes (i (length _temperature))
     (setf (elt _temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get acl_msgs::QuadHealth :md5sum-) "343728cd67e960654d49bfc9f80c1b8b")
(setf (get acl_msgs::QuadHealth :datatype-) "acl_msgs/QuadHealth")
(setf (get acl_msgs::QuadHealth :definition-)
      "Header header
float64 time_since_boot
int64 dropped_packets
uint8 received_seq
float64 voltage
float64[4] current
float64[4] temperature
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



(provide :acl_msgs/QuadHealth "343728cd67e960654d49bfc9f80c1b8b")


