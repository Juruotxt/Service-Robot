;; Auto-generated. Do not edit!


(when (boundp 'rei_robot_base::CarData)
  (if (not (find-package "REI_ROBOT_BASE"))
    (make-package "REI_ROBOT_BASE"))
  (shadow 'CarData (find-package "REI_ROBOT_BASE")))
(unless (find-package "REI_ROBOT_BASE::CARDATA")
  (make-package "REI_ROBOT_BASE::CARDATA"))

(in-package "ROS")
;;//! \htmlinclude CarData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rei_robot_base::CarData
  :super ros::object
  :slots (_header _motor_speed _crash _cliff _ultrasound _smoke _power_voltage _is_charge _tempareture _relative_humidity _input_io _output_io _relay_status ))

(defmethod rei_robot_base::CarData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor_speed __motor_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:crash __crash) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cliff __cliff) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ultrasound __ultrasound) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:smoke __smoke) 0)
    ((:power_voltage __power_voltage) 0.0)
    ((:is_charge __is_charge) nil)
    ((:tempareture __tempareture) 0.0)
    ((:relative_humidity __relative_humidity) 0.0)
    ((:input_io __input_io) (make-array 4 :initial-element 0 :element-type :integer))
    ((:output_io __output_io) (make-array 7 :initial-element 0 :element-type :integer))
    ((:relay_status __relay_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor_speed __motor_speed)
   (setq _crash __crash)
   (setq _cliff __cliff)
   (setq _ultrasound __ultrasound)
   (setq _smoke (round __smoke))
   (setq _power_voltage (float __power_voltage))
   (setq _is_charge __is_charge)
   (setq _tempareture (float __tempareture))
   (setq _relative_humidity (float __relative_humidity))
   (setq _input_io __input_io)
   (setq _output_io __output_io)
   (setq _relay_status __relay_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:crash
   (&optional __crash)
   (if __crash (setq _crash __crash)) _crash)
  (:cliff
   (&optional __cliff)
   (if __cliff (setq _cliff __cliff)) _cliff)
  (:ultrasound
   (&optional __ultrasound)
   (if __ultrasound (setq _ultrasound __ultrasound)) _ultrasound)
  (:smoke
   (&optional __smoke)
   (if __smoke (setq _smoke __smoke)) _smoke)
  (:power_voltage
   (&optional __power_voltage)
   (if __power_voltage (setq _power_voltage __power_voltage)) _power_voltage)
  (:is_charge
   (&optional __is_charge)
   (if __is_charge (setq _is_charge __is_charge)) _is_charge)
  (:tempareture
   (&optional __tempareture)
   (if __tempareture (setq _tempareture __tempareture)) _tempareture)
  (:relative_humidity
   (&optional __relative_humidity)
   (if __relative_humidity (setq _relative_humidity __relative_humidity)) _relative_humidity)
  (:input_io
   (&optional __input_io)
   (if __input_io (setq _input_io __input_io)) _input_io)
  (:output_io
   (&optional __output_io)
   (if __output_io (setq _output_io __output_io)) _output_io)
  (:relay_status
   (&optional __relay_status)
   (if __relay_status (setq _relay_status __relay_status)) _relay_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _motor_speed
    (* 8    (length _motor_speed)) 4
    ;; int8[] _crash
    (* 1    (length _crash)) 4
    ;; int8[] _cliff
    (* 1    (length _cliff)) 4
    ;; float32[] _ultrasound
    (* 4    (length _ultrasound)) 4
    ;; int8 _smoke
    1
    ;; float32 _power_voltage
    4
    ;; bool _is_charge
    1
    ;; float32 _tempareture
    4
    ;; float32 _relative_humidity
    4
    ;; int8[4] _input_io
    (* 1    4)
    ;; int8[7] _output_io
    (* 1    7)
    ;; bool _relay_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _motor_speed
     (write-long (length _motor_speed) s)
     (dotimes (i (length _motor_speed))
       (sys::poke (elt _motor_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int8[] _crash
     (write-long (length _crash) s)
     (dotimes (i (length _crash))
       (write-byte (elt _crash i) s)
       )
     ;; int8[] _cliff
     (write-long (length _cliff) s)
     (dotimes (i (length _cliff))
       (write-byte (elt _cliff i) s)
       )
     ;; float32[] _ultrasound
     (write-long (length _ultrasound) s)
     (dotimes (i (length _ultrasound))
       (sys::poke (elt _ultrasound i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8 _smoke
       (write-byte _smoke s)
     ;; float32 _power_voltage
       (sys::poke _power_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_charge
       (if _is_charge (write-byte -1 s) (write-byte 0 s))
     ;; float32 _tempareture
       (sys::poke _tempareture (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_humidity
       (sys::poke _relative_humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8[4] _input_io
     (dotimes (i 4)
       (write-byte (elt _input_io i) s)
       )
     ;; int8[7] _output_io
     (dotimes (i 7)
       (write-byte (elt _output_io i) s)
       )
     ;; bool _relay_status
       (if _relay_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _motor_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int8[] _crash
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crash (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _crash i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _crash i) 127) (setf (elt _crash i) (- (elt _crash i) 256)))
     ))
   ;; int8[] _cliff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cliff (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cliff i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _cliff i) 127) (setf (elt _cliff i) (- (elt _cliff i) 256)))
     ))
   ;; float32[] _ultrasound
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ultrasound (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ultrasound i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8 _smoke
     (setq _smoke (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _smoke 127) (setq _smoke (- _smoke 256)))
   ;; float32 _power_voltage
     (setq _power_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_charge
     (setq _is_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _tempareture
     (setq _tempareture (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_humidity
     (setq _relative_humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8[4] _input_io
   (dotimes (i (length _input_io))
     (setf (elt _input_io i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _input_io i) 127) (setf (elt _input_io i) (- (elt _input_io i) 256)))
     )
   ;; int8[7] _output_io
   (dotimes (i (length _output_io))
     (setf (elt _output_io i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _output_io i) 127) (setf (elt _output_io i) (- (elt _output_io i) 256)))
     )
   ;; bool _relay_status
     (setq _relay_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rei_robot_base::CarData :md5sum-) "857f5bd49eb52154124a6a34972c8da9")
(setf (get rei_robot_base::CarData :datatype-) "rei_robot_base/CarData")
(setf (get rei_robot_base::CarData :definition-)
      "std_msgs/Header header
float64[] motor_speed
int8[] crash
int8[] cliff
float32[] ultrasound
int8 smoke
float32 power_voltage
bool is_charge
float32 tempareture
float32 relative_humidity
int8[4] input_io
int8[7] output_io
bool relay_status

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



(provide :rei_robot_base/CarData "857f5bd49eb52154124a6a34972c8da9")


