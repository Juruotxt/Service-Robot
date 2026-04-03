;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_cruise::RemoveGoal)
  (if (not (find-package "REI_ROBOT_CRUISE"))
    (make-package "REI_ROBOT_CRUISE"))
  (shadow 'RemoveGoal (find-package "REI_ROBOT_CRUISE")))
(unless (find-package "REI_ROBOT_CRUISE::REMOVEGOAL")
  (make-package "REI_ROBOT_CRUISE::REMOVEGOAL"))
(unless (find-package "REI_ROBOT_CRUISE::REMOVEGOALREQUEST")
  (make-package "REI_ROBOT_CRUISE::REMOVEGOALREQUEST"))
(unless (find-package "REI_ROBOT_CRUISE::REMOVEGOALRESPONSE")
  (make-package "REI_ROBOT_CRUISE::REMOVEGOALRESPONSE"))

(in-package "ROS")





(defclass rei_robot_cruise::RemoveGoalRequest
  :super ros::object
  :slots (_mode _goal_names ))

(defmethod rei_robot_cruise::RemoveGoalRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:goal_names __goal_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _goal_names __goal_names)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:goal_names
   (&optional __goal_names)
   (if __goal_names (setq _goal_names __goal_names)) _goal_names)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; string[] _goal_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _goal_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string[] _goal_names
     (write-long (length _goal_names) s)
     (dolist (elem _goal_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _goal_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _goal_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rei_robot_cruise::RemoveGoalResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod rei_robot_cruise::RemoveGoalResponse
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

(defclass rei_robot_cruise::RemoveGoal
  :super ros::object
  :slots ())

(setf (get rei_robot_cruise::RemoveGoal :md5sum-) "d1f169e29b016407be028dd4d3bd5a79")
(setf (get rei_robot_cruise::RemoveGoal :datatype-) "rei_robot_cruise/RemoveGoal")
(setf (get rei_robot_cruise::RemoveGoal :request) rei_robot_cruise::RemoveGoalRequest)
(setf (get rei_robot_cruise::RemoveGoal :response) rei_robot_cruise::RemoveGoalResponse)

(defmethod rei_robot_cruise::RemoveGoalRequest
  (:response () (instance rei_robot_cruise::RemoveGoalResponse :init)))

(setf (get rei_robot_cruise::RemoveGoalRequest :md5sum-) "d1f169e29b016407be028dd4d3bd5a79")
(setf (get rei_robot_cruise::RemoveGoalRequest :datatype-) "rei_robot_cruise/RemoveGoalRequest")
(setf (get rei_robot_cruise::RemoveGoalRequest :definition-)
      "string mode #\"all\"/\"not_all\"
string[] goal_names#if mode is \"not all\"
---
bool isSuccess
")

(setf (get rei_robot_cruise::RemoveGoalResponse :md5sum-) "d1f169e29b016407be028dd4d3bd5a79")
(setf (get rei_robot_cruise::RemoveGoalResponse :datatype-) "rei_robot_cruise/RemoveGoalResponse")
(setf (get rei_robot_cruise::RemoveGoalResponse :definition-)
      "string mode #\"all\"/\"not_all\"
string[] goal_names#if mode is \"not all\"
---
bool isSuccess
")



(provide :rei_robot_cruise/RemoveGoal "d1f169e29b016407be028dd4d3bd5a79")


