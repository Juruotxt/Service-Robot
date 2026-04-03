;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_base::MotorCmd)
  (if (not (find-package "REI_ROBOT_BASE"))
    (make-package "REI_ROBOT_BASE"))
  (shadow 'MotorCmd (find-package "REI_ROBOT_BASE")))
(unless (find-package "REI_ROBOT_BASE::MOTORCMD")
  (make-package "REI_ROBOT_BASE::MOTORCMD"))

(in-package "ROS")
;;//! \htmlinclude MotorCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rei_robot_base::MotorCmd
  :super ros::object
  :slots (_header _motor_expect_speed ))

(defmethod rei_robot_base::MotorCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor_expect_speed __motor_expect_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor_expect_speed __motor_expect_speed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor_expect_speed
   (&optional __motor_expect_speed)
   (if __motor_expect_speed (setq _motor_expect_speed __motor_expect_speed)) _motor_expect_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _motor_expect_speed
    (* 8    (length _motor_expect_speed)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _motor_expect_speed
     (write-long (length _motor_expect_speed) s)
     (dotimes (i (length _motor_expect_speed))
       (sys::poke (elt _motor_expect_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _motor_expect_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_expect_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_expect_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rei_robot_base::MotorCmd :md5sum-) "7a2942428c5f1b0d3e058b2b6e137632")
(setf (get rei_robot_base::MotorCmd :datatype-) "rei_robot_base/MotorCmd")
(setf (get rei_robot_base::MotorCmd :definition-)
      "std_msgs/Header header
float64[] motor_expect_speed
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



(provide :rei_robot_base/MotorCmd "7a2942428c5f1b0d3e058b2b6e137632")


