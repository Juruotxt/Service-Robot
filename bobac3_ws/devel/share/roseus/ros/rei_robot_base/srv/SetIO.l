;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_base::SetIO)
  (if (not (find-package "REI_ROBOT_BASE"))
    (make-package "REI_ROBOT_BASE"))
  (shadow 'SetIO (find-package "REI_ROBOT_BASE")))
(unless (find-package "REI_ROBOT_BASE::SETIO")
  (make-package "REI_ROBOT_BASE::SETIO"))
(unless (find-package "REI_ROBOT_BASE::SETIOREQUEST")
  (make-package "REI_ROBOT_BASE::SETIOREQUEST"))
(unless (find-package "REI_ROBOT_BASE::SETIORESPONSE")
  (make-package "REI_ROBOT_BASE::SETIORESPONSE"))

(in-package "ROS")





(defclass rei_robot_base::SetIORequest
  :super ros::object
  :slots (_all_off _all_on _io _state ))

(defmethod rei_robot_base::SetIORequest
  (:init
   (&key
    ((:all_off __all_off) nil)
    ((:all_on __all_on) nil)
    ((:io __io) (make-array 0 :initial-element 0 :element-type :integer))
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _all_off __all_off)
   (setq _all_on __all_on)
   (setq _io __io)
   (setq _state __state)
   self)
  (:all_off
   (&optional __all_off)
   (if __all_off (setq _all_off __all_off)) _all_off)
  (:all_on
   (&optional __all_on)
   (if __all_on (setq _all_on __all_on)) _all_on)
  (:io
   (&optional __io)
   (if __io (setq _io __io)) _io)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _all_off
    1
    ;; bool _all_on
    1
    ;; int8[] _io
    (* 1    (length _io)) 4
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _all_off
       (if _all_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _all_on
       (if _all_on (write-byte -1 s) (write-byte 0 s))
     ;; int8[] _io
     (write-long (length _io) s)
     (dotimes (i (length _io))
       (write-byte (elt _io i) s)
       )
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _all_off
     (setq _all_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _all_on
     (setq _all_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8[] _io
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _io (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _io i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _io i) 127) (setf (elt _io i) (- (elt _io i) 256)))
     ))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rei_robot_base::SetIOResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rei_robot_base::SetIOResponse
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

(defclass rei_robot_base::SetIO
  :super ros::object
  :slots ())

(setf (get rei_robot_base::SetIO :md5sum-) "070183f95a96810ab8072eb2bc773618")
(setf (get rei_robot_base::SetIO :datatype-) "rei_robot_base/SetIO")
(setf (get rei_robot_base::SetIO :request) rei_robot_base::SetIORequest)
(setf (get rei_robot_base::SetIO :response) rei_robot_base::SetIOResponse)

(defmethod rei_robot_base::SetIORequest
  (:response () (instance rei_robot_base::SetIOResponse :init)))

(setf (get rei_robot_base::SetIORequest :md5sum-) "070183f95a96810ab8072eb2bc773618")
(setf (get rei_robot_base::SetIORequest :datatype-) "rei_robot_base/SetIORequest")
(setf (get rei_robot_base::SetIORequest :definition-)
      "bool all_off
bool all_on 
int8[] io
bool state
---
bool success
string message

")

(setf (get rei_robot_base::SetIOResponse :md5sum-) "070183f95a96810ab8072eb2bc773618")
(setf (get rei_robot_base::SetIOResponse :datatype-) "rei_robot_base/SetIOResponse")
(setf (get rei_robot_base::SetIOResponse :definition-)
      "bool all_off
bool all_on 
int8[] io
bool state
---
bool success
string message

")



(provide :rei_robot_base/SetIO "070183f95a96810ab8072eb2bc773618")


