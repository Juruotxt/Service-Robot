;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_cruise::NavGoal)
  (if (not (find-package "REI_ROBOT_CRUISE"))
    (make-package "REI_ROBOT_CRUISE"))
  (shadow 'NavGoal (find-package "REI_ROBOT_CRUISE")))
(unless (find-package "REI_ROBOT_CRUISE::NAVGOAL")
  (make-package "REI_ROBOT_CRUISE::NAVGOAL"))

(in-package "ROS")
;;//! \htmlinclude NavGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rei_robot_cruise::NavGoal
  :super ros::object
  :slots (_point_name _level _target_pose ))

(defmethod rei_robot_cruise::NavGoal
  (:init
   (&key
    ((:point_name __point_name) "")
    ((:level __level) 0)
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _point_name (string __point_name))
   (setq _level (round __level))
   (setq _target_pose __target_pose)
   self)
  (:point_name
   (&optional __point_name)
   (if __point_name (setq _point_name __point_name)) _point_name)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; string _point_name
    4 (length _point_name)
    ;; int8 _level
    1
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _point_name
       (write-long (length _point_name) s) (princ _point_name s)
     ;; int8 _level
       (write-byte _level s)
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _point_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _level 127) (setq _level (- _level 256)))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(setf (get rei_robot_cruise::NavGoal :md5sum-) "76079389e9944c93b7011c612b3a9d95")
(setf (get rei_robot_cruise::NavGoal :datatype-) "rei_robot_cruise/NavGoal")
(setf (get rei_robot_cruise::NavGoal :definition-)
      "string point_name
int8 level #0: can be ignore, 1: important
geometry_msgs/PoseStamped target_pose
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rei_robot_cruise/NavGoal "76079389e9944c93b7011c612b3a9d95")


