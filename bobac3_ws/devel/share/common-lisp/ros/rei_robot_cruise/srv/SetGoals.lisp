; Auto-generated. Do not edit!


(cl:in-package rei_robot_cruise-srv)


;//! \htmlinclude SetGoals-request.msg.html

(cl:defclass <SetGoals-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector rei_robot_cruise-msg:NavGoal)
   :initform (cl:make-array 0 :element-type 'rei_robot_cruise-msg:NavGoal :initial-element (cl:make-instance 'rei_robot_cruise-msg:NavGoal))))
)

(cl:defclass SetGoals-request (<SetGoals-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoals-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoals-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<SetGoals-request> is deprecated: use rei_robot_cruise-srv:SetGoals-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetGoals-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:mode-val is deprecated.  Use rei_robot_cruise-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <SetGoals-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:goals-val is deprecated.  Use rei_robot_cruise-srv:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoals-request>) ostream)
  "Serializes a message object of type '<SetGoals-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoals-request>) istream)
  "Deserializes a message object of type '<SetGoals-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rei_robot_cruise-msg:NavGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoals-request>)))
  "Returns string type for a service object of type '<SetGoals-request>"
  "rei_robot_cruise/SetGoalsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoals-request)))
  "Returns string type for a service object of type 'SetGoals-request"
  "rei_robot_cruise/SetGoalsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoals-request>)))
  "Returns md5sum for a message object of type '<SetGoals-request>"
  "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoals-request)))
  "Returns md5sum for a message object of type 'SetGoals-request"
  "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoals-request>)))
  "Returns full string definition for message of type '<SetGoals-request>"
  (cl:format cl:nil "string mode #'insert': insert new goal or replace the same name goal, \"reset\": remove all goals and add these goals ~%rei_robot_cruise/NavGoal[] goals~%~%================================================================================~%MSG: rei_robot_cruise/NavGoal~%string point_name~%int8 level #0: can be ignore, 1: important~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoals-request)))
  "Returns full string definition for message of type 'SetGoals-request"
  (cl:format cl:nil "string mode #'insert': insert new goal or replace the same name goal, \"reset\": remove all goals and add these goals ~%rei_robot_cruise/NavGoal[] goals~%~%================================================================================~%MSG: rei_robot_cruise/NavGoal~%string point_name~%int8 level #0: can be ignore, 1: important~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoals-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoals-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoals-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':goals (goals msg))
))
;//! \htmlinclude SetGoals-response.msg.html

(cl:defclass <SetGoals-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGoals-response (<SetGoals-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoals-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoals-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<SetGoals-response> is deprecated: use rei_robot_cruise-srv:SetGoals-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <SetGoals-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:isSuccess-val is deprecated.  Use rei_robot_cruise-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoals-response>) ostream)
  "Serializes a message object of type '<SetGoals-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoals-response>) istream)
  "Deserializes a message object of type '<SetGoals-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoals-response>)))
  "Returns string type for a service object of type '<SetGoals-response>"
  "rei_robot_cruise/SetGoalsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoals-response)))
  "Returns string type for a service object of type 'SetGoals-response"
  "rei_robot_cruise/SetGoalsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoals-response>)))
  "Returns md5sum for a message object of type '<SetGoals-response>"
  "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoals-response)))
  "Returns md5sum for a message object of type 'SetGoals-response"
  "0fc3a7c0031cb18f49e9f325b3d8fbf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoals-response>)))
  "Returns full string definition for message of type '<SetGoals-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoals-response)))
  "Returns full string definition for message of type 'SetGoals-response"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoals-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoals-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoals-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoals)))
  'SetGoals-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoals)))
  'SetGoals-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoals)))
  "Returns string type for a service object of type '<SetGoals>"
  "rei_robot_cruise/SetGoals")