;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_cruise::StartStopNav)
  (if (not (find-package "REI_ROBOT_CRUISE"))
    (make-package "REI_ROBOT_CRUISE"))
  (shadow 'StartStopNav (find-package "REI_ROBOT_CRUISE")))
(unless (find-package "REI_ROBOT_CRUISE::STARTSTOPNAV")
  (make-package "REI_ROBOT_CRUISE::STARTSTOPNAV"))
(unless (find-package "REI_ROBOT_CRUISE::STARTSTOPNAVREQUEST")
  (make-package "REI_ROBOT_CRUISE::STARTSTOPNAVREQUEST"))
(unless (find-package "REI_ROBOT_CRUISE::STARTSTOPNAVRESPONSE")
  (make-package "REI_ROBOT_CRUISE::STARTSTOPNAVRESPONSE"))

(in-package "ROS")





(defclass rei_robot_cruise::StartStopNavRequest
  :super ros::object
  :slots (_mode _level ))

(defmethod rei_robot_cruise::StartStopNavRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _level (round __level))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; int8 _level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; int8 _level
       (write-byte _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _level 127) (setq _level (- _level 256)))
   ;;
   self)
  )

(defclass rei_robot_cruise::StartStopNavResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod rei_robot_cruise::StartStopNavResponse
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

(defclass rei_robot_cruise::StartStopNav
  :super ros::object
  :slots ())

(setf (get rei_robot_cruise::StartStopNav :md5sum-) "997ae050ff0c195c83d9c11c0633ef89")
(setf (get rei_robot_cruise::StartStopNav :datatype-) "rei_robot_cruise/StartStopNav")
(setf (get rei_robot_cruise::StartStopNav :request) rei_robot_cruise::StartStopNavRequest)
(setf (get rei_robot_cruise::StartStopNav :response) rei_robot_cruise::StartStopNavResponse)

(defmethod rei_robot_cruise::StartStopNavRequest
  (:response () (instance rei_robot_cruise::StartStopNavResponse :init)))

(setf (get rei_robot_cruise::StartStopNavRequest :md5sum-) "997ae050ff0c195c83d9c11c0633ef89")
(setf (get rei_robot_cruise::StartStopNavRequest :datatype-) "rei_robot_cruise/StartStopNavRequest")
(setf (get rei_robot_cruise::StartStopNavRequest :definition-)
      "string mode #'stop':stop the task, 'paush': paush the task, \"start\"
int8 level #'0': action after current goal finished, '1':action immediately
---
bool isSuccess
")

(setf (get rei_robot_cruise::StartStopNavResponse :md5sum-) "997ae050ff0c195c83d9c11c0633ef89")
(setf (get rei_robot_cruise::StartStopNavResponse :datatype-) "rei_robot_cruise/StartStopNavResponse")
(setf (get rei_robot_cruise::StartStopNavResponse :definition-)
      "string mode #'stop':stop the task, 'paush': paush the task, \"start\"
int8 level #'0': action after current goal finished, '1':action immediately
---
bool isSuccess
")



(provide :rei_robot_cruise/StartStopNav "997ae050ff0c195c83d9c11c0633ef89")


