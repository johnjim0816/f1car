;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::SimpleState)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'SimpleState (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::SIMPLESTATE")
  (make-package "ACL_MSGS::SIMPLESTATE"))

(in-package "ROS")
;;//! \htmlinclude SimpleState.msg.html


(defclass acl_msgs::SimpleState
  :super ros::object
  :slots (_segment _x _y _psi _omega _Vx _Vy _psidot _slipping _prev_radius ))

(defmethod acl_msgs::SimpleState
  (:init
   (&key
    ((:segment __segment) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:psi __psi) 0.0)
    ((:omega __omega) 0.0)
    ((:Vx __Vx) 0.0)
    ((:Vy __Vy) 0.0)
    ((:psidot __psidot) 0.0)
    ((:slipping __slipping) 0)
    ((:prev_radius __prev_radius) 0.0)
    )
   (send-super :init)
   (setq _segment (round __segment))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _psi (float __psi))
   (setq _omega (float __omega))
   (setq _Vx (float __Vx))
   (setq _Vy (float __Vy))
   (setq _psidot (float __psidot))
   (setq _slipping (round __slipping))
   (setq _prev_radius (float __prev_radius))
   self)
  (:segment
   (&optional __segment)
   (if __segment (setq _segment __segment)) _segment)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:psidot
   (&optional __psidot)
   (if __psidot (setq _psidot __psidot)) _psidot)
  (:slipping
   (&optional __slipping)
   (if __slipping (setq _slipping __slipping)) _slipping)
  (:prev_radius
   (&optional __prev_radius)
   (if __prev_radius (setq _prev_radius __prev_radius)) _prev_radius)
  (:serialization-length
   ()
   (+
    ;; int64 _segment
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _psi
    8
    ;; float64 _omega
    8
    ;; float64 _Vx
    8
    ;; float64 _Vy
    8
    ;; float64 _psidot
    8
    ;; int64 _slipping
    8
    ;; float64 _prev_radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _segment
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _segment (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _segment) (= (length (_segment . bv)) 2)) ;; bignum
              (write-long (ash (elt (_segment . bv) 0) 0) s)
              (write-long (ash (elt (_segment . bv) 1) -1) s))
             ((and (class _segment) (= (length (_segment . bv)) 1)) ;; big1
              (write-long (elt (_segment . bv) 0) s)
              (write-long (if (>= _segment 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _segment s)(write-long (if (>= _segment 0) 0 #xffffffff) s)))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Vy
       (sys::poke _Vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psidot
       (sys::poke _psidot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _slipping
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _slipping (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _slipping) (= (length (_slipping . bv)) 2)) ;; bignum
              (write-long (ash (elt (_slipping . bv) 0) 0) s)
              (write-long (ash (elt (_slipping . bv) 1) -1) s))
             ((and (class _slipping) (= (length (_slipping . bv)) 1)) ;; big1
              (write-long (elt (_slipping . bv) 0) s)
              (write-long (if (>= _slipping 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _slipping s)(write-long (if (>= _slipping 0) 0 #xffffffff) s)))
     ;; float64 _prev_radius
       (sys::poke _prev_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _segment
#+(or :alpha :irix6 :x86_64)
      (setf _segment (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _segment (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega
     (setq _omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Vx
     (setq _Vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Vy
     (setq _Vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psidot
     (setq _psidot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _slipping
#+(or :alpha :irix6 :x86_64)
      (setf _slipping (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _slipping (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _prev_radius
     (setq _prev_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get acl_msgs::SimpleState :md5sum-) "cfc3f29b7f63d9bfdd15aafee94b9fa1")
(setf (get acl_msgs::SimpleState :datatype-) "acl_msgs/SimpleState")
(setf (get acl_msgs::SimpleState :definition-)
      "int64 segment
float64 x
float64 y
float64 psi
float64 omega
float64 Vx
float64 Vy
float64 psidot
int64 slipping
float64 prev_radius
")



(provide :acl_msgs/SimpleState "cfc3f29b7f63d9bfdd15aafee94b9fa1")


