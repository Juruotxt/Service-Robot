;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_cruise::SetGoals)
  (if (not (find-package "REI_ROBOT_CRUISE"))
    (make-package "REI_ROBOT_CRUISE"))
  (shadow 'SetGoals (find-package "REI_ROBOT_CRUISE")))
(unless (find-package "REI_ROBOT_CRUISE::SETGOALS")
  (make-package "REI_ROBOT_CRUISE::SETGOALS"))
(unless (find-package "REI_ROBOT_CRUISE::SETGOALSREQUEST")
  (make-package "REI_ROBOT_CRUISE::SETGOALSREQUEST"))
(unless (find-package "REI_ROBOT_CRUISE::SETGOALSRESPONSE")
  (make-package "REI_ROBOT_CRUISE::SETGOALSRESPONSE"))

(in-package "ROS")





(defclass rei_robot_cruise::SetGoalsRequest
  :super ros::object
  :slots (_mode _goals ))

(defmethod rei_robot_cruise::SetGoalsRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance rei_robot_cruise::NavGoal :init) r)) r))
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _goals __goals)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; rei_robot_cruise/NavGoal[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; rei_robot_cruise/NavGoal[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rei_robot_cruise/NavGoal[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance rei_robot_cruise::NavGoal :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rei_robot_cruise::SetGoalsResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod rei_robot_cruise::SetGoalsResponse
  (:init
   (&key
    ((:isSuccess __isSuccess) nil)
    )
   (send-super :init)
   (setq _isSuccess __isSuccess)
   self)
  (:isSuccess
   (&optional __isSuccess)
   (if __isSuccess (setq _isSuccess __isSuccess)) _isSuccess)
  (:serialization-length
   ()
   (+
    ;; bool _isSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSuccess
       (if _isSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSuccess
     (setq _isSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rei_robot_cruise::SetGoals
  :super ros::object
  :slots ())

(setf (get rei_robot_cruise::SetGoals :md5sum-) "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(setf (get rei_robot_cruise::SetGoals :datatype-) "rei_robot_cruise/SetGoals")
(setf (get rei_robot_cruise::SetGoals :request) rei_robot_cruise::SetGoalsRequest)
(setf (get rei_robot_cruise::SetGoals :response) rei_robot_cruise::SetGoalsResponse)

(defmethod rei_robot_cruise::SetGoalsRequest
  (:response () (instance rei_robot_cruise::SetGoalsResponse :init)))

(setf (get rei_robot_cruise::SetGoalsRequest :md5sum-) "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(setf (get rei_robot_cruise::SetGoalsRequest :datatype-) "rei_robot_cruise/SetGoalsRequest")
(setf (get rei_robot_cruise::SetGoalsRequest :definition-)
      "string mode #'insert': insert new goal or replace the same name goal, \"reset\": remove all goals and add these goals 
rei_robot_cruise/NavGoal[] goals

================================================================================
MSG: rei_robot_cruise/NavGoal
string point_name
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
---
bool isSuccess
")

(setf (get rei_robot_cruise::SetGoalsResponse :md5sum-) "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(setf (get rei_robot_cruise::SetGoalsResponse :datatype-) "rei_robot_cruise/SetGoalsResponse")
(setf (get rei_robot_cruise::SetGoalsResponse :definition-)
      "string mode #'insert': insert new goal or replace the same name goal, \"reset\": remove all goals and add these goals 
rei_robot_cruise/NavGoal[] goals

================================================================================
MSG: rei_robot_cruise/NavGoal
string point_name
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
---
bool isSuccess
")



(provide :rei_robot_cruise/SetGoals "0fc3a7c0031cb18f49e9f325b3d8fbf4")


