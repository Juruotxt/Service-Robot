; Auto-generated. Do not edit!


(cl:in-package rei_robot_base-msg)


;//! \htmlinclude CarData.msg.html

(cl:defclass <CarData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (crash
    :reader crash
    :initarg :crash
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (cliff
    :reader cliff
    :initarg :cliff
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (ultrasound
    :reader ultrasound
    :initarg :ultrasound
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (smoke
    :reader smoke
    :initarg :smoke
    :type cl:fixnum
    :initform 0)
   (power_voltage
    :reader power_voltage
    :initarg :power_voltage
    :type cl:float
    :initform 0.0)
   (is_charge
    :reader is_charge
    :initarg :is_charge
    :type cl:boolean
    :initform cl:nil)
   (tempareture
    :reader tempareture
    :initarg :tempareture
    :type cl:float
    :initform 0.0)
   (relative_humidity
    :reader relative_humidity
    :initarg :relative_humidity
    :type cl:float
    :initform 0.0)
   (input_io
    :reader input_io
    :initarg :input_io
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (output_io
    :reader output_io
    :initarg :output_io
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 7 :element-type 'cl:fixnum :initial-element 0))
   (relay_status
    :reader relay_status
    :initarg :relay_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarData (<CarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-msg:<CarData> is deprecated: use rei_robot_base-msg:CarData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:header-val is deprecated.  Use rei_robot_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:motor_speed-val is deprecated.  Use rei_robot_base-msg:motor_speed instead.")
  (motor_speed m))

(cl:ensure-generic-function 'crash-val :lambda-list '(m))
(cl:defmethod crash-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:crash-val is deprecated.  Use rei_robot_base-msg:crash instead.")
  (crash m))

(cl:ensure-generic-function 'cliff-val :lambda-list '(m))
(cl:defmethod cliff-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:cliff-val is deprecated.  Use rei_robot_base-msg:cliff instead.")
  (cliff m))

(cl:ensure-generic-function 'ultrasound-val :lambda-list '(m))
(cl:defmethod ultrasound-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:ultrasound-val is deprecated.  Use rei_robot_base-msg:ultrasound instead.")
  (ultrasound m))

(cl:ensure-generic-function 'smoke-val :lambda-list '(m))
(cl:defmethod smoke-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:smoke-val is deprecated.  Use rei_robot_base-msg:smoke instead.")
  (smoke m))

(cl:ensure-generic-function 'power_voltage-val :lambda-list '(m))
(cl:defmethod power_voltage-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:power_voltage-val is deprecated.  Use rei_robot_base-msg:power_voltage instead.")
  (power_voltage m))

(cl:ensure-generic-function 'is_charge-val :lambda-list '(m))
(cl:defmethod is_charge-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:is_charge-val is deprecated.  Use rei_robot_base-msg:is_charge instead.")
  (is_charge m))

(cl:ensure-generic-function 'tempareture-val :lambda-list '(m))
(cl:defmethod tempareture-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:tempareture-val is deprecated.  Use rei_robot_base-msg:tempareture instead.")
  (tempareture m))

(cl:ensure-generic-function 'relative_humidity-val :lambda-list '(m))
(cl:defmethod relative_humidity-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:relative_humidity-val is deprecated.  Use rei_robot_base-msg:relative_humidity instead.")
  (relative_humidity m))

(cl:ensure-generic-function 'input_io-val :lambda-list '(m))
(cl:defmethod input_io-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:input_io-val is deprecated.  Use rei_robot_base-msg:input_io instead.")
  (input_io m))

(cl:ensure-generic-function 'output_io-val :lambda-list '(m))
(cl:defmethod output_io-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:output_io-val is deprecated.  Use rei_robot_base-msg:output_io instead.")
  (output_io m))

(cl:ensure-generic-function 'relay_status-val :lambda-list '(m))
(cl:defmethod relay_status-val ((m <CarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:relay_status-val is deprecated.  Use rei_robot_base-msg:relay_status instead.")
  (relay_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarData>) ostream)
  "Serializes a message object of type '<CarData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'motor_speed))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'crash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'crash))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cliff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'cliff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ultrasound))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ultrasound))
  (cl:let* ((signed (cl:slot-value msg 'smoke)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charge) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempareture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'input_io))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'output_io))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relay_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarData>) istream)
  "Deserializes a message object of type '<CarData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_speed)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'crash) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'crash)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cliff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cliff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ultrasound) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ultrasound)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'smoke) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_charge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempareture) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_humidity) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'input_io) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'input_io)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'output_io) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'output_io)))
    (cl:dotimes (i 7)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
    (cl:setf (cl:slot-value msg 'relay_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarData>)))
  "Returns string type for a message object of type '<CarData>"
  "rei_robot_base/CarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarData)))
  "Returns string type for a message object of type 'CarData"
  "rei_robot_base/CarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarData>)))
  "Returns md5sum for a message object of type '<CarData>"
  "857f5bd49eb52154124a6a34972c8da9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarData)))
  "Returns md5sum for a message object of type 'CarData"
  "857f5bd49eb52154124a6a34972c8da9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarData>)))
  "Returns full string definition for message of type '<CarData>"
  (cl:format cl:nil "std_msgs/Header header~%float64[] motor_speed~%int8[] crash~%int8[] cliff~%float32[] ultrasound~%int8 smoke~%float32 power_voltage~%bool is_charge~%float32 tempareture~%float32 relative_humidity~%int8[4] input_io~%int8[7] output_io~%bool relay_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarData)))
  "Returns full string definition for message of type 'CarData"
  (cl:format cl:nil "std_msgs/Header header~%float64[] motor_speed~%int8[] crash~%int8[] cliff~%float32[] ultrasound~%int8 smoke~%float32 power_voltage~%bool is_charge~%float32 tempareture~%float32 relative_humidity~%int8[4] input_io~%int8[7] output_io~%bool relay_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'crash) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cliff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ultrasound) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4
     1
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'input_io) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'output_io) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarData>))
  "Converts a ROS message object to a list"
  (cl:list 'CarData
    (cl:cons ':header (header msg))
    (cl:cons ':motor_speed (motor_speed msg))
    (cl:cons ':crash (crash msg))
    (cl:cons ':cliff (cliff msg))
    (cl:cons ':ultrasound (ultrasound msg))
    (cl:cons ':smoke (smoke msg))
    (cl:cons ':power_voltage (power_voltage msg))
    (cl:cons ':is_charge (is_charge msg))
    (cl:cons ':tempareture (tempareture msg))
    (cl:cons ':relative_humidity (relative_humidity msg))
    (cl:cons ':input_io (input_io msg))
    (cl:cons ':output_io (output_io msg))
    (cl:cons ':relay_status (relay_status msg))
))
