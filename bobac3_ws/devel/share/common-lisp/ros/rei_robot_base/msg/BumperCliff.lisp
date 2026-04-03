; Auto-generated. Do not edit!


(cl:in-package rei_robot_base-msg)


;//! \htmlinclude BumperCliff.msg.html

(cl:defclass <BumperCliff> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumper
    :reader bumper
    :initarg :bumper
    :type cl:boolean
    :initform cl:nil)
   (cliff
    :reader cliff
    :initarg :cliff
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BumperCliff (<BumperCliff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperCliff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperCliff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-msg:<BumperCliff> is deprecated: use rei_robot_base-msg:BumperCliff instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BumperCliff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:header-val is deprecated.  Use rei_robot_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <BumperCliff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:bumper-val is deprecated.  Use rei_robot_base-msg:bumper instead.")
  (bumper m))

(cl:ensure-generic-function 'cliff-val :lambda-list '(m))
(cl:defmethod cliff-val ((m <BumperCliff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-msg:cliff-val is deprecated.  Use rei_robot_base-msg:cliff instead.")
  (cliff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperCliff>) ostream)
  "Serializes a message object of type '<BumperCliff>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperCliff>) istream)
  "Deserializes a message object of type '<BumperCliff>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperCliff>)))
  "Returns string type for a message object of type '<BumperCliff>"
  "rei_robot_base/BumperCliff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperCliff)))
  "Returns string type for a message object of type 'BumperCliff"
  "rei_robot_base/BumperCliff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperCliff>)))
  "Returns md5sum for a message object of type '<BumperCliff>"
  "ab6287bf4b996386da4b9c24cd2a59f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperCliff)))
  "Returns md5sum for a message object of type 'BumperCliff"
  "ab6287bf4b996386da4b9c24cd2a59f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperCliff>)))
  "Returns full string definition for message of type '<BumperCliff>"
  (cl:format cl:nil "std_msgs/Header header~%bool bumper~%bool cliff~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperCliff)))
  "Returns full string definition for message of type 'BumperCliff"
  (cl:format cl:nil "std_msgs/Header header~%bool bumper~%bool cliff~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperCliff>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperCliff>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperCliff
    (cl:cons ':header (header msg))
    (cl:cons ':bumper (bumper msg))
    (cl:cons ':cliff (cliff msg))
))
