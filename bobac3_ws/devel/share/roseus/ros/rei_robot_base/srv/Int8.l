;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_base::Int8)
  (if (not (find-package "REI_ROBOT_BASE"))
    (make-package "REI_ROBOT_BASE"))
  (shadow 'Int8 (find-package "REI_ROBOT_BASE")))
(unless (find-package "REI_ROBOT_BASE::INT8")
  (make-package "REI_ROBOT_BASE::INT8"))
(unless (find-package "REI_ROBOT_BASE::INT8REQUEST")
  (make-package "REI_ROBOT_BASE::INT8REQUEST"))
(unless (find-package "REI_ROBOT_BASE::INT8RESPONSE")
  (make-package "REI_ROBOT_BASE::INT8RESPONSE"))

(in-package "ROS")





(defclass rei_robot_base::Int8Request
  :super ros::object
  :slots (_data ))

(defmethod rei_robot_base::Int8Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data 127) (setq _data (- _data 256)))
   ;;
   self)
  )

(defclass rei_robot_base::Int8Response
  :super ros::object
  :slots (_success _message ))

(defmethod rei_robot_base::Int8Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rei_robot_base::Int8
  :super ros::object
  :slots ())

(setf (get rei_robot_base::Int8 :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get rei_robot_base::Int8 :datatype-) "rei_robot_base/Int8")
(setf (get rei_robot_base::Int8 :request) rei_robot_base::Int8Request)
(setf (get rei_robot_base::Int8 :response) rei_robot_base::Int8Response)

(defmethod rei_robot_base::Int8Request
  (:response () (instance rei_robot_base::Int8Response :init)))

(setf (get rei_robot_base::Int8Request :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get rei_robot_base::Int8Request :datatype-) "rei_robot_base/Int8Request")
(setf (get rei_robot_base::Int8Request :definition-)
      "int8 data
---
bool success
string message
")

(setf (get rei_robot_base::Int8Response :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get rei_robot_base::Int8Response :datatype-) "rei_robot_base/Int8Response")
(setf (get rei_robot_base::Int8Response :definition-)
      "int8 data
---
bool success
string message
")



(provide :rei_robot_base/Int8 "208d4ab53cf12eb941a7d93b34b7532b")


