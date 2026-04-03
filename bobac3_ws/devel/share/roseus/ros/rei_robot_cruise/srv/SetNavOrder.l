;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_cruise::SetNavOrder)
  (if (not (find-package "REI_ROBOT_CRUISE"))
    (make-package "REI_ROBOT_CRUISE"))
  (shadow 'SetNavOrder (find-package "REI_ROBOT_CRUISE")))
(unless (find-package "REI_ROBOT_CRUISE::SETNAVORDER")
  (make-package "REI_ROBOT_CRUISE::SETNAVORDER"))
(unless (find-package "REI_ROBOT_CRUISE::SETNAVORDERREQUEST")
  (make-package "REI_ROBOT_CRUISE::SETNAVORDERREQUEST"))
(unless (find-package "REI_ROBOT_CRUISE::SETNAVORDERRESPONSE")
  (make-package "REI_ROBOT_CRUISE::SETNAVORDERRESPONSE"))

(in-package "ROS")





(defclass rei_robot_cruise::SetNavOrderRequest
  :super ros::object
  :slots (_loop_time _goal_order _callback_order ))

(defmethod rei_robot_cruise::SetNavOrderRequest
  (:init
   (&key
    ((:loop_time __loop_time) 0)
    ((:goal_order __goal_order) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:callback_order __callback_order) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _loop_time (round __loop_time))
   (setq _goal_order __goal_order)
   (setq _callback_order __callback_order)
   self)
  (:loop_time
   (&optional __loop_time)
   (if __loop_time (setq _loop_time __loop_time)) _loop_time)
  (:goal_order
   (&optional __goal_order)
   (if __goal_order (setq _goal_order __goal_order)) _goal_order)
  (:callback_order
   (&optional __callback_order)
   (if __callback_order (setq _callback_order __callback_order)) _callback_order)
  (:serialization-length
   ()
   (+
    ;; int16 _loop_time
    2
    ;; string[] _goal_order
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _goal_order)) 4
    ;; string[] _callback_order
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _callback_order)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _loop_time
       (write-word _loop_time s)
     ;; string[] _goal_order
     (write-long (length _goal_order) s)
     (dolist (elem _goal_order)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _callback_order
     (write-long (length _callback_order) s)
     (dolist (elem _callback_order)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _loop_time
     (setq _loop_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string[] _goal_order
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_order (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _goal_order i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _callback_order
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _callback_order (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _callback_order i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rei_robot_cruise::SetNavOrderResponse
  :super ros::object
  :slots (_message _isSuccess ))

(defmethod rei_robot_cruise::SetNavOrderResponse
  (:init
   (&key
    ((:message __message) "")
    ((:isSuccess __isSuccess) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _isSuccess __isSuccess)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:isSuccess
   (&optional __isSuccess)
   (if __isSuccess (setq _isSuccess __isSuccess)) _isSuccess)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _isSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _isSuccess
       (if _isSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _isSuccess
     (setq _isSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rei_robot_cruise::SetNavOrder
  :super ros::object
  :slots ())

(setf (get rei_robot_cruise::SetNavOrder :md5sum-) "40f5672c1f1f412d28deb80740b471de")
(setf (get rei_robot_cruise::SetNavOrder :datatype-) "rei_robot_cruise/SetNavOrder")
(setf (get rei_robot_cruise::SetNavOrder :request) rei_robot_cruise::SetNavOrderRequest)
(setf (get rei_robot_cruise::SetNavOrder :response) rei_robot_cruise::SetNavOrderResponse)

(defmethod rei_robot_cruise::SetNavOrderRequest
  (:response () (instance rei_robot_cruise::SetNavOrderResponse :init)))

(setf (get rei_robot_cruise::SetNavOrderRequest :md5sum-) "40f5672c1f1f412d28deb80740b471de")
(setf (get rei_robot_cruise::SetNavOrderRequest :datatype-) "rei_robot_cruise/SetNavOrderRequest")
(setf (get rei_robot_cruise::SetNavOrderRequest :definition-)
      "int16 loop_time #0 means infinite
string[] goal_order
string[] callback_order
---
string message
bool isSuccess
")

(setf (get rei_robot_cruise::SetNavOrderResponse :md5sum-) "40f5672c1f1f412d28deb80740b471de")
(setf (get rei_robot_cruise::SetNavOrderResponse :datatype-) "rei_robot_cruise/SetNavOrderResponse")
(setf (get rei_robot_cruise::SetNavOrderResponse :definition-)
      "int16 loop_time #0 means infinite
string[] goal_order
string[] callback_order
---
string message
bool isSuccess
")



(provide :rei_robot_cruise/SetNavOrder "40f5672c1f1f412d28deb80740b471de")


