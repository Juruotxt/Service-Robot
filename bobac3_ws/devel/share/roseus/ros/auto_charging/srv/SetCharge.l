;; Auto-generated. Do not edit!


(when (boundp 'auto_charging::SetCharge)
  (if (not (find-package "AUTO_CHARGING"))
    (make-package "AUTO_CHARGING"))
  (shadow 'SetCharge (find-package "AUTO_CHARGING")))
(unless (find-package "AUTO_CHARGING::SETCHARGE")
  (make-package "AUTO_CHARGING::SETCHARGE"))
(unless (find-package "AUTO_CHARGING::SETCHARGEREQUEST")
  (make-package "AUTO_CHARGING::SETCHARGEREQUEST"))
(unless (find-package "AUTO_CHARGING::SETCHARGERESPONSE")
  (make-package "AUTO_CHARGING::SETCHARGERESPONSE"))

(in-package "ROS")





(defclass auto_charging::SetChargeRequest
  :super ros::object
  :slots (_nav _ar_track _ar_id ))

(defmethod auto_charging::SetChargeRequest
  (:init
   (&key
    ((:nav __nav) nil)
    ((:ar_track __ar_track) nil)
    ((:ar_id __ar_id) 0)
    )
   (send-super :init)
   (setq _nav __nav)
   (setq _ar_track __ar_track)
   (setq _ar_id (round __ar_id))
   self)
  (:nav
   (&optional __nav)
   (if __nav (setq _nav __nav)) _nav)
  (:ar_track
   (&optional __ar_track)
   (if __ar_track (setq _ar_track __ar_track)) _ar_track)
  (:ar_id
   (&optional __ar_id)
   (if __ar_id (setq _ar_id __ar_id)) _ar_id)
  (:serialization-length
   ()
   (+
    ;; bool _nav
    1
    ;; bool _ar_track
    1
    ;; int8 _ar_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _nav
       (if _nav (write-byte -1 s) (write-byte 0 s))
     ;; bool _ar_track
       (if _ar_track (write-byte -1 s) (write-byte 0 s))
     ;; int8 _ar_id
       (write-byte _ar_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _nav
     (setq _nav (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ar_track
     (setq _ar_track (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _ar_id
     (setq _ar_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ar_id 127) (setq _ar_id (- _ar_id 256)))
   ;;
   self)
  )

(defclass auto_charging::SetChargeResponse
  :super ros::object
  :slots (_message _success ))

(defmethod auto_charging::SetChargeResponse
  (:init
   (&key
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass auto_charging::SetCharge
  :super ros::object
  :slots ())

(setf (get auto_charging::SetCharge :md5sum-) "3584daae5e4de369ae6b70e57de9d866")
(setf (get auto_charging::SetCharge :datatype-) "auto_charging/SetCharge")
(setf (get auto_charging::SetCharge :request) auto_charging::SetChargeRequest)
(setf (get auto_charging::SetCharge :response) auto_charging::SetChargeResponse)

(defmethod auto_charging::SetChargeRequest
  (:response () (instance auto_charging::SetChargeResponse :init)))

(setf (get auto_charging::SetChargeRequest :md5sum-) "3584daae5e4de369ae6b70e57de9d866")
(setf (get auto_charging::SetChargeRequest :datatype-) "auto_charging/SetChargeRequest")
(setf (get auto_charging::SetChargeRequest :definition-)
      "bool nav
bool ar_track 
int8 ar_id
---
string message
bool success 
")

(setf (get auto_charging::SetChargeResponse :md5sum-) "3584daae5e4de369ae6b70e57de9d866")
(setf (get auto_charging::SetChargeResponse :datatype-) "auto_charging/SetChargeResponse")
(setf (get auto_charging::SetChargeResponse :definition-)
      "bool nav
bool ar_track 
int8 ar_id
---
string message
bool success 
")



(provide :auto_charging/SetCharge "3584daae5e4de369ae6b70e57de9d866")


