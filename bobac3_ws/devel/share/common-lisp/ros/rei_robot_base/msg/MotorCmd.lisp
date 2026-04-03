; Auto-generated. Do not edit!


(cl:in-package rei_robot_base-msg)


;//! \htmlinclude MotorCmd.msg.html

(cl:defclass <MotorCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor_expect_speed
    :reader motor_expect_speed
    :initarg :motor_expect_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MotorCmd (<MotorCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-msg:<MotorCmd> is deprecated: use rei_robot_base-msg:MotorCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:header-val is deprecated.  Use rei_robot_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor_expect_speed-val :lambda-list '(m))
(cl:defmethod motor_expect_speed-val ((m <MotorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:motor_expect_speed-val is deprecated.  Use rei_robot_base-msg:motor_expect_speed instead.")
  (motor_expect_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCmd>) ostream)
  "Serializes a message object of type '<MotorCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_expect_speed))))
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
   (cl:slot-value msg 'motor_expect_speed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCmd>) istream)
  "Deserializes a message object of type '<MotorCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_expect_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_expect_speed)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCmd>)))
  "Returns string type for a message object of type '<MotorCmd>"
  "rei_robot_base/MotorCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCmd)))
  "Returns string type for a message object of type 'MotorCmd"
  "rei_robot_base/MotorCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCmd>)))
  "Returns md5sum for a message object of type '<MotorCmd>"
  "7a2942428c5f1b0d3e058b2b6e137632")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCmd)))
  "Returns md5sum for a message object of type 'MotorCmd"
  "7a2942428c5f1b0d3e058b2b6e137632")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCmd>)))
  "Returns full string definition for message of type '<MotorCmd>"
  (cl:format cl:nil "std_msgs/Header header~%float64[] motor_expect_speed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCmd)))
  "Returns full string definition for message of type 'MotorCmd"
  (cl:format cl:nil "std_msgs/Header header~%float64[] motor_expect_speed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_expect_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCmd
    (cl:cons ':header (header msg))
    (cl:cons ':motor_expect_speed (motor_expect_speed msg))
))
