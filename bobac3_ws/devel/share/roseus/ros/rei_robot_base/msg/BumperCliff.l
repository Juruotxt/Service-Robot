;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_base::BumperCliff)
  (if (not (find-package "REI_ROBOT_BASE"))
    (make-package "REI_ROBOT_BASE"))
  (shadow 'BumperCliff (find-package "REI_ROBOT_BASE")))
(unless (find-package "REI_ROBOT_BASE::BUMPERCLIFF")
  (make-package "REI_ROBOT_BASE::BUMPERCLIFF"))

(in-package "ROS")
;;//! \htmlinclude BumperCliff.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rei_robot_base::BumperCliff
  :super ros::object
  :slots (_header _bumper _cliff ))

(defmethod rei_robot_base::BumperCliff
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper __bumper) nil)
    ((:cliff __cliff) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper __bumper)
   (setq _cliff __cliff)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:cliff
   (&optional __cliff)
   (if __cliff (setq _cliff __cliff)) _cliff)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _bumper
    1
    ;; bool _cliff
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _bumper
       (if _bumper (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff
       (if _cliff (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _bumper
     (setq _bumper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff
     (setq _cliff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rei_robot_base::BumperCliff :md5sum-) "ab6287bf4b996386da4b9c24cd2a59f3")
(setf (get rei_robot_base::BumperCliff :datatype-) "rei_robot_base/BumperCliff")
(setf (get rei_robot_base::BumperCliff :definition-)
      "std_msgs/Header header
bool bumper
bool cliff
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



(provide :rei_robot_base/BumperCliff "ab6287bf4b996386da4b9c24cd2a59f3")


