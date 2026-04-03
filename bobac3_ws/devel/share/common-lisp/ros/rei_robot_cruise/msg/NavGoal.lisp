; Auto-generated. Do not edit!


(cl:in-package rei_robot_cruise-msg)


;//! \htmlinclude NavGoal.msg.html

(cl:defclass <NavGoal> (roslisp-msg-protocol:ros-message)
  ((point_name
    :reader point_name
    :initarg :point_name
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass NavGoal (<NavGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-msg:<NavGoal> is deprecated: use rei_robot_cruise-msg:NavGoal instead.")))

(cl:ensure-generic-function 'point_name-val :lambda-list '(m))
(cl:defmethod point_name-val ((m <NavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-msg:point_name-val is deprecated.  Use rei_robot_cruise-msg:point_name instead.")
  (point_name m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <NavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-msg:level-val is deprecated.  Use rei_robot_cruise-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <NavGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-msg:target_pose-val is deprecated.  Use rei_robot_cruise-msg:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGoal>) ostream)
  "Serializes a message object of type '<NavGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_name))
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGoal>) istream)
  "Deserializes a message object of type '<NavGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGoal>)))
  "Returns string type for a message object of type '<NavGoal>"
  "rei_robot_cruise/NavGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGoal)))
  "Returns string type for a message object of type 'NavGoal"
  "rei_robot_cruise/NavGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGoal>)))
  "Returns md5sum for a message object of type '<NavGoal>"
  "76079389e9944c93b7011c612b3a9d95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGoal)))
  "Returns md5sum for a message object of type 'NavGoal"
  "76079389e9944c93b7011c612b3a9d95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGoal>)))
  "Returns full string definition for message of type '<NavGoal>"
  (cl:format cl:nil "string point_name~%int8 level #0: can be ignore, 1: important~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGoal)))
  "Returns full string definition for message of type 'NavGoal"
  (cl:format cl:nil "string point_name~%int8 level #0: can be ignore, 1: important~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'point_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGoal
    (cl:cons ':point_name (point_name msg))
    (cl:cons ':level (level msg))
    (cl:cons ':target_pose (target_pose msg))
))
