;; Auto-generated. Do not edit!


(when (boundp 'acl_msgs::Cvx)
  (if (not (find-package "ACL_MSGS"))
    (make-package "ACL_MSGS"))
  (shadow 'Cvx (find-package "ACL_MSGS")))
(unless (find-package "ACL_MSGS::CVX")
  (make-package "ACL_MSGS::CVX"))

(in-package "ROS")
;;//! \htmlinclude Cvx.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acl_msgs::Cvx
  :super ros::object
  :slots (_header _JPSa_ms _JPS_fix_ms _JPStotal_ms _JPSa_solved _JPS_fix_solved _whole_solved _safe_solved _entered_safe_path _needToComputeSafePath _cvx_decomp_whole_ms _gurobi_whole_ms _gurobi_whole_ms_mine _gurobi_whole_trials _gurobi_whole_dt _gurobi_whole_factor _cvx_decomp_safe_ms _gurobi_safe_ms _gurobi_safe_ms_mine _gurobi_safe_trials _gurobi_safe_dt _gurobi_safe_factor _total_replanning_ms _Ja _Ja_inside _Ja_outside _Jb _Jb_inside _Jb_outside _decision _veloc_norm _total_dist _angle_deg _computed_both _deltaT _indexR _indexH _indexR_percentage _deltaT_percentage _k ))

(defmethod acl_msgs::Cvx
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:JPSa_ms __JPSa_ms) 0.0)
    ((:JPS_fix_ms __JPS_fix_ms) 0.0)
    ((:JPStotal_ms __JPStotal_ms) 0.0)
    ((:JPSa_solved __JPSa_solved) 0)
    ((:JPS_fix_solved __JPS_fix_solved) 0)
    ((:whole_solved __whole_solved) 0)
    ((:safe_solved __safe_solved) 0)
    ((:entered_safe_path __entered_safe_path) 0)
    ((:needToComputeSafePath __needToComputeSafePath) 0)
    ((:cvx_decomp_whole_ms __cvx_decomp_whole_ms) 0.0)
    ((:gurobi_whole_ms __gurobi_whole_ms) 0.0)
    ((:gurobi_whole_ms_mine __gurobi_whole_ms_mine) 0.0)
    ((:gurobi_whole_trials __gurobi_whole_trials) 0.0)
    ((:gurobi_whole_dt __gurobi_whole_dt) 0.0)
    ((:gurobi_whole_factor __gurobi_whole_factor) 0.0)
    ((:cvx_decomp_safe_ms __cvx_decomp_safe_ms) 0.0)
    ((:gurobi_safe_ms __gurobi_safe_ms) 0.0)
    ((:gurobi_safe_ms_mine __gurobi_safe_ms_mine) 0.0)
    ((:gurobi_safe_trials __gurobi_safe_trials) 0.0)
    ((:gurobi_safe_dt __gurobi_safe_dt) 0.0)
    ((:gurobi_safe_factor __gurobi_safe_factor) 0.0)
    ((:total_replanning_ms __total_replanning_ms) 0.0)
    ((:Ja __Ja) 0.0)
    ((:Ja_inside __Ja_inside) 0.0)
    ((:Ja_outside __Ja_outside) 0.0)
    ((:Jb __Jb) 0.0)
    ((:Jb_inside __Jb_inside) 0.0)
    ((:Jb_outside __Jb_outside) 0.0)
    ((:decision __decision) 0)
    ((:veloc_norm __veloc_norm) 0.0)
    ((:total_dist __total_dist) 0.0)
    ((:angle_deg __angle_deg) 0.0)
    ((:computed_both __computed_both) 0)
    ((:deltaT __deltaT) 0)
    ((:indexR __indexR) 0)
    ((:indexH __indexH) 0)
    ((:indexR_percentage __indexR_percentage) 0.0)
    ((:deltaT_percentage __deltaT_percentage) 0.0)
    ((:k __k) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _JPSa_ms (float __JPSa_ms))
   (setq _JPS_fix_ms (float __JPS_fix_ms))
   (setq _JPStotal_ms (float __JPStotal_ms))
   (setq _JPSa_solved (round __JPSa_solved))
   (setq _JPS_fix_solved (round __JPS_fix_solved))
   (setq _whole_solved (round __whole_solved))
   (setq _safe_solved (round __safe_solved))
   (setq _entered_safe_path (round __entered_safe_path))
   (setq _needToComputeSafePath (round __needToComputeSafePath))
   (setq _cvx_decomp_whole_ms (float __cvx_decomp_whole_ms))
   (setq _gurobi_whole_ms (float __gurobi_whole_ms))
   (setq _gurobi_whole_ms_mine (float __gurobi_whole_ms_mine))
   (setq _gurobi_whole_trials (float __gurobi_whole_trials))
   (setq _gurobi_whole_dt (float __gurobi_whole_dt))
   (setq _gurobi_whole_factor (float __gurobi_whole_factor))
   (setq _cvx_decomp_safe_ms (float __cvx_decomp_safe_ms))
   (setq _gurobi_safe_ms (float __gurobi_safe_ms))
   (setq _gurobi_safe_ms_mine (float __gurobi_safe_ms_mine))
   (setq _gurobi_safe_trials (float __gurobi_safe_trials))
   (setq _gurobi_safe_dt (float __gurobi_safe_dt))
   (setq _gurobi_safe_factor (float __gurobi_safe_factor))
   (setq _total_replanning_ms (float __total_replanning_ms))
   (setq _Ja (float __Ja))
   (setq _Ja_inside (float __Ja_inside))
   (setq _Ja_outside (float __Ja_outside))
   (setq _Jb (float __Jb))
   (setq _Jb_inside (float __Jb_inside))
   (setq _Jb_outside (float __Jb_outside))
   (setq _decision (round __decision))
   (setq _veloc_norm (float __veloc_norm))
   (setq _total_dist (float __total_dist))
   (setq _angle_deg (float __angle_deg))
   (setq _computed_both (round __computed_both))
   (setq _deltaT (round __deltaT))
   (setq _indexR (round __indexR))
   (setq _indexH (round __indexH))
   (setq _indexR_percentage (float __indexR_percentage))
   (setq _deltaT_percentage (float __deltaT_percentage))
   (setq _k (round __k))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:JPSa_ms
   (&optional __JPSa_ms)
   (if __JPSa_ms (setq _JPSa_ms __JPSa_ms)) _JPSa_ms)
  (:JPS_fix_ms
   (&optional __JPS_fix_ms)
   (if __JPS_fix_ms (setq _JPS_fix_ms __JPS_fix_ms)) _JPS_fix_ms)
  (:JPStotal_ms
   (&optional __JPStotal_ms)
   (if __JPStotal_ms (setq _JPStotal_ms __JPStotal_ms)) _JPStotal_ms)
  (:JPSa_solved
   (&optional __JPSa_solved)
   (if __JPSa_solved (setq _JPSa_solved __JPSa_solved)) _JPSa_solved)
  (:JPS_fix_solved
   (&optional __JPS_fix_solved)
   (if __JPS_fix_solved (setq _JPS_fix_solved __JPS_fix_solved)) _JPS_fix_solved)
  (:whole_solved
   (&optional __whole_solved)
   (if __whole_solved (setq _whole_solved __whole_solved)) _whole_solved)
  (:safe_solved
   (&optional __safe_solved)
   (if __safe_solved (setq _safe_solved __safe_solved)) _safe_solved)
  (:entered_safe_path
   (&optional __entered_safe_path)
   (if __entered_safe_path (setq _entered_safe_path __entered_safe_path)) _entered_safe_path)
  (:needToComputeSafePath
   (&optional __needToComputeSafePath)
   (if __needToComputeSafePath (setq _needToComputeSafePath __needToComputeSafePath)) _needToComputeSafePath)
  (:cvx_decomp_whole_ms
   (&optional __cvx_decomp_whole_ms)
   (if __cvx_decomp_whole_ms (setq _cvx_decomp_whole_ms __cvx_decomp_whole_ms)) _cvx_decomp_whole_ms)
  (:gurobi_whole_ms
   (&optional __gurobi_whole_ms)
   (if __gurobi_whole_ms (setq _gurobi_whole_ms __gurobi_whole_ms)) _gurobi_whole_ms)
  (:gurobi_whole_ms_mine
   (&optional __gurobi_whole_ms_mine)
   (if __gurobi_whole_ms_mine (setq _gurobi_whole_ms_mine __gurobi_whole_ms_mine)) _gurobi_whole_ms_mine)
  (:gurobi_whole_trials
   (&optional __gurobi_whole_trials)
   (if __gurobi_whole_trials (setq _gurobi_whole_trials __gurobi_whole_trials)) _gurobi_whole_trials)
  (:gurobi_whole_dt
   (&optional __gurobi_whole_dt)
   (if __gurobi_whole_dt (setq _gurobi_whole_dt __gurobi_whole_dt)) _gurobi_whole_dt)
  (:gurobi_whole_factor
   (&optional __gurobi_whole_factor)
   (if __gurobi_whole_factor (setq _gurobi_whole_factor __gurobi_whole_factor)) _gurobi_whole_factor)
  (:cvx_decomp_safe_ms
   (&optional __cvx_decomp_safe_ms)
   (if __cvx_decomp_safe_ms (setq _cvx_decomp_safe_ms __cvx_decomp_safe_ms)) _cvx_decomp_safe_ms)
  (:gurobi_safe_ms
   (&optional __gurobi_safe_ms)
   (if __gurobi_safe_ms (setq _gurobi_safe_ms __gurobi_safe_ms)) _gurobi_safe_ms)
  (:gurobi_safe_ms_mine
   (&optional __gurobi_safe_ms_mine)
   (if __gurobi_safe_ms_mine (setq _gurobi_safe_ms_mine __gurobi_safe_ms_mine)) _gurobi_safe_ms_mine)
  (:gurobi_safe_trials
   (&optional __gurobi_safe_trials)
   (if __gurobi_safe_trials (setq _gurobi_safe_trials __gurobi_safe_trials)) _gurobi_safe_trials)
  (:gurobi_safe_dt
   (&optional __gurobi_safe_dt)
   (if __gurobi_safe_dt (setq _gurobi_safe_dt __gurobi_safe_dt)) _gurobi_safe_dt)
  (:gurobi_safe_factor
   (&optional __gurobi_safe_factor)
   (if __gurobi_safe_factor (setq _gurobi_safe_factor __gurobi_safe_factor)) _gurobi_safe_factor)
  (:total_replanning_ms
   (&optional __total_replanning_ms)
   (if __total_replanning_ms (setq _total_replanning_ms __total_replanning_ms)) _total_replanning_ms)
  (:Ja
   (&optional __Ja)
   (if __Ja (setq _Ja __Ja)) _Ja)
  (:Ja_inside
   (&optional __Ja_inside)
   (if __Ja_inside (setq _Ja_inside __Ja_inside)) _Ja_inside)
  (:Ja_outside
   (&optional __Ja_outside)
   (if __Ja_outside (setq _Ja_outside __Ja_outside)) _Ja_outside)
  (:Jb
   (&optional __Jb)
   (if __Jb (setq _Jb __Jb)) _Jb)
  (:Jb_inside
   (&optional __Jb_inside)
   (if __Jb_inside (setq _Jb_inside __Jb_inside)) _Jb_inside)
  (:Jb_outside
   (&optional __Jb_outside)
   (if __Jb_outside (setq _Jb_outside __Jb_outside)) _Jb_outside)
  (:decision
   (&optional __decision)
   (if __decision (setq _decision __decision)) _decision)
  (:veloc_norm
   (&optional __veloc_norm)
   (if __veloc_norm (setq _veloc_norm __veloc_norm)) _veloc_norm)
  (:total_dist
   (&optional __total_dist)
   (if __total_dist (setq _total_dist __total_dist)) _total_dist)
  (:angle_deg
   (&optional __angle_deg)
   (if __angle_deg (setq _angle_deg __angle_deg)) _angle_deg)
  (:computed_both
   (&optional __computed_both)
   (if __computed_both (setq _computed_both __computed_both)) _computed_both)
  (:deltaT
   (&optional __deltaT)
   (if __deltaT (setq _deltaT __deltaT)) _deltaT)
  (:indexR
   (&optional __indexR)
   (if __indexR (setq _indexR __indexR)) _indexR)
  (:indexH
   (&optional __indexH)
   (if __indexH (setq _indexH __indexH)) _indexH)
  (:indexR_percentage
   (&optional __indexR_percentage)
   (if __indexR_percentage (setq _indexR_percentage __indexR_percentage)) _indexR_percentage)
  (:deltaT_percentage
   (&optional __deltaT_percentage)
   (if __deltaT_percentage (setq _deltaT_percentage __deltaT_percentage)) _deltaT_percentage)
  (:k
   (&optional __k)
   (if __k (setq _k __k)) _k)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _JPSa_ms
    8
    ;; float64 _JPS_fix_ms
    8
    ;; float64 _JPStotal_ms
    8
    ;; int8 _JPSa_solved
    1
    ;; int8 _JPS_fix_solved
    1
    ;; int8 _whole_solved
    1
    ;; int8 _safe_solved
    1
    ;; int8 _entered_safe_path
    1
    ;; int8 _needToComputeSafePath
    1
    ;; float64 _cvx_decomp_whole_ms
    8
    ;; float64 _gurobi_whole_ms
    8
    ;; float64 _gurobi_whole_ms_mine
    8
    ;; float64 _gurobi_whole_trials
    8
    ;; float64 _gurobi_whole_dt
    8
    ;; float64 _gurobi_whole_factor
    8
    ;; float64 _cvx_decomp_safe_ms
    8
    ;; float64 _gurobi_safe_ms
    8
    ;; float64 _gurobi_safe_ms_mine
    8
    ;; float64 _gurobi_safe_trials
    8
    ;; float64 _gurobi_safe_dt
    8
    ;; float64 _gurobi_safe_factor
    8
    ;; float64 _total_replanning_ms
    8
    ;; float64 _Ja
    8
    ;; float64 _Ja_inside
    8
    ;; float64 _Ja_outside
    8
    ;; float64 _Jb
    8
    ;; float64 _Jb_inside
    8
    ;; float64 _Jb_outside
    8
    ;; int8 _decision
    1
    ;; float64 _veloc_norm
    8
    ;; float64 _total_dist
    8
    ;; float64 _angle_deg
    8
    ;; int8 _computed_both
    1
    ;; int8 _deltaT
    1
    ;; int8 _indexR
    1
    ;; int8 _indexH
    1
    ;; float64 _indexR_percentage
    8
    ;; float64 _deltaT_percentage
    8
    ;; int8 _k
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _JPSa_ms
       (sys::poke _JPSa_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _JPS_fix_ms
       (sys::poke _JPS_fix_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _JPStotal_ms
       (sys::poke _JPStotal_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _JPSa_solved
       (write-byte _JPSa_solved s)
     ;; int8 _JPS_fix_solved
       (write-byte _JPS_fix_solved s)
     ;; int8 _whole_solved
       (write-byte _whole_solved s)
     ;; int8 _safe_solved
       (write-byte _safe_solved s)
     ;; int8 _entered_safe_path
       (write-byte _entered_safe_path s)
     ;; int8 _needToComputeSafePath
       (write-byte _needToComputeSafePath s)
     ;; float64 _cvx_decomp_whole_ms
       (sys::poke _cvx_decomp_whole_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_whole_ms
       (sys::poke _gurobi_whole_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_whole_ms_mine
       (sys::poke _gurobi_whole_ms_mine (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_whole_trials
       (sys::poke _gurobi_whole_trials (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_whole_dt
       (sys::poke _gurobi_whole_dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_whole_factor
       (sys::poke _gurobi_whole_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cvx_decomp_safe_ms
       (sys::poke _cvx_decomp_safe_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_safe_ms
       (sys::poke _gurobi_safe_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_safe_ms_mine
       (sys::poke _gurobi_safe_ms_mine (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_safe_trials
       (sys::poke _gurobi_safe_trials (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_safe_dt
       (sys::poke _gurobi_safe_dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gurobi_safe_factor
       (sys::poke _gurobi_safe_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_replanning_ms
       (sys::poke _total_replanning_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ja
       (sys::poke _Ja (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ja_inside
       (sys::poke _Ja_inside (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Ja_outside
       (sys::poke _Ja_outside (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Jb
       (sys::poke _Jb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Jb_inside
       (sys::poke _Jb_inside (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Jb_outside
       (sys::poke _Jb_outside (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _decision
       (write-byte _decision s)
     ;; float64 _veloc_norm
       (sys::poke _veloc_norm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_dist
       (sys::poke _total_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_deg
       (sys::poke _angle_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _computed_both
       (write-byte _computed_both s)
     ;; int8 _deltaT
       (write-byte _deltaT s)
     ;; int8 _indexR
       (write-byte _indexR s)
     ;; int8 _indexH
       (write-byte _indexH s)
     ;; float64 _indexR_percentage
       (sys::poke _indexR_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _deltaT_percentage
       (sys::poke _deltaT_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _k
       (write-byte _k s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _JPSa_ms
     (setq _JPSa_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _JPS_fix_ms
     (setq _JPS_fix_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _JPStotal_ms
     (setq _JPStotal_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _JPSa_solved
     (setq _JPSa_solved (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _JPSa_solved 127) (setq _JPSa_solved (- _JPSa_solved 256)))
   ;; int8 _JPS_fix_solved
     (setq _JPS_fix_solved (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _JPS_fix_solved 127) (setq _JPS_fix_solved (- _JPS_fix_solved 256)))
   ;; int8 _whole_solved
     (setq _whole_solved (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _whole_solved 127) (setq _whole_solved (- _whole_solved 256)))
   ;; int8 _safe_solved
     (setq _safe_solved (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _safe_solved 127) (setq _safe_solved (- _safe_solved 256)))
   ;; int8 _entered_safe_path
     (setq _entered_safe_path (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _entered_safe_path 127) (setq _entered_safe_path (- _entered_safe_path 256)))
   ;; int8 _needToComputeSafePath
     (setq _needToComputeSafePath (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _needToComputeSafePath 127) (setq _needToComputeSafePath (- _needToComputeSafePath 256)))
   ;; float64 _cvx_decomp_whole_ms
     (setq _cvx_decomp_whole_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_whole_ms
     (setq _gurobi_whole_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_whole_ms_mine
     (setq _gurobi_whole_ms_mine (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_whole_trials
     (setq _gurobi_whole_trials (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_whole_dt
     (setq _gurobi_whole_dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_whole_factor
     (setq _gurobi_whole_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cvx_decomp_safe_ms
     (setq _cvx_decomp_safe_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_safe_ms
     (setq _gurobi_safe_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_safe_ms_mine
     (setq _gurobi_safe_ms_mine (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_safe_trials
     (setq _gurobi_safe_trials (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_safe_dt
     (setq _gurobi_safe_dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gurobi_safe_factor
     (setq _gurobi_safe_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_replanning_ms
     (setq _total_replanning_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ja
     (setq _Ja (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ja_inside
     (setq _Ja_inside (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Ja_outside
     (setq _Ja_outside (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Jb
     (setq _Jb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Jb_inside
     (setq _Jb_inside (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Jb_outside
     (setq _Jb_outside (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _decision
     (setq _decision (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _decision 127) (setq _decision (- _decision 256)))
   ;; float64 _veloc_norm
     (setq _veloc_norm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_dist
     (setq _total_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_deg
     (setq _angle_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _computed_both
     (setq _computed_both (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _computed_both 127) (setq _computed_both (- _computed_both 256)))
   ;; int8 _deltaT
     (setq _deltaT (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _deltaT 127) (setq _deltaT (- _deltaT 256)))
   ;; int8 _indexR
     (setq _indexR (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _indexR 127) (setq _indexR (- _indexR 256)))
   ;; int8 _indexH
     (setq _indexH (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _indexH 127) (setq _indexH (- _indexH 256)))
   ;; float64 _indexR_percentage
     (setq _indexR_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _deltaT_percentage
     (setq _deltaT_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _k
     (setq _k (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _k 127) (setq _k (- _k 256)))
   ;;
   self)
  )

(setf (get acl_msgs::Cvx :md5sum-) "74962b3120644cbb8f5c179e3fb331a0")
(setf (get acl_msgs::Cvx :datatype-) "acl_msgs/Cvx")
(setf (get acl_msgs::Cvx :definition-)
      "Header header

float64 JPSa_ms   
float64 JPS_fix_ms  
float64 JPStotal_ms 

int8 JPSa_solved      
int8 JPS_fix_solved   

int8 whole_solved
int8 safe_solved

int8 entered_safe_path

int8 needToComputeSafePath

float64 cvx_decomp_whole_ms  
 

float64 gurobi_whole_ms  
float64 gurobi_whole_ms_mine 
float64 gurobi_whole_trials
float64 gurobi_whole_dt
float64 gurobi_whole_factor


float64 cvx_decomp_safe_ms 

float64 gurobi_safe_ms  
float64 gurobi_safe_ms_mine 
float64 gurobi_safe_trials
float64 gurobi_safe_dt
float64 gurobi_safe_factor

float64 total_replanning_ms

float64 Ja
float64 Ja_inside
float64 Ja_outside

float64 Jb
float64 Jb_inside
float64 Jb_outside
int8 decision 

float64 veloc_norm
float64 total_dist 
float64 angle_deg  

int8 computed_both  

int8 deltaT
int8 indexR
int8 indexH
float64 indexR_percentage
float64 deltaT_percentage
int8 k


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



(provide :acl_msgs/Cvx "74962b3120644cbb8f5c179e3fb331a0")


