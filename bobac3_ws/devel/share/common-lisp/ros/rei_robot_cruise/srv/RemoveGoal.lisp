; Auto-generated. Do not edit!


(cl:in-package rei_robot_cruise-srv)


;//! \htmlinclude RemoveGoal-request.msg.html

(cl:defclass <RemoveGoal-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (goal_names
    :reader goal_names
    :initarg :goal_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RemoveGoal-request (<RemoveGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<RemoveGoal-request> is deprecated: use rei_robot_cruise-srv:RemoveGoal-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RemoveGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:mode-val is deprecated.  Use rei_robot_cruise-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'goal_names-val :lambda-list '(m))
(cl:defmethod goal_names-val ((m <RemoveGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:goal_names-val is deprecated.  Use rei_robot_cruise-srv:goal_names instead.")
  (goal_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveGoal-request>) ostream)
  "Serializes a message object of type '<RemoveGoal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'goal_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveGoal-request>) istream)
  "Deserializes a message object of type '<RemoveGoal-request>"
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
  (cl:setf (cl:slot-value msg 'goal_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveGoal-request>)))
  "Returns string type for a service object of type '<RemoveGoal-request>"
  "rei_robot_cruise/RemoveGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveGoal-request)))
  "Returns string type for a service object of type 'RemoveGoal-request"
  "rei_robot_cruise/RemoveGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveGoal-request>)))
  "Returns md5sum for a message object of type '<RemoveGoal-request>"
  "d1f169e29b016407be028dd4d3bd5a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveGoal-request)))
  "Returns md5sum for a message object of type 'RemoveGoal-request"
  "d1f169e29b016407be028dd4d3bd5a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveGoal-request>)))
  "Returns full string definition for message of type '<RemoveGoal-request>"
  (cl:format cl:nil "string mode #\"all\"/\"not_all\"~%string[] goal_names#if mode is \"not all\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveGoal-request)))
  "Returns full string definition for message of type 'RemoveGoal-request"
  (cl:format cl:nil "string mode #\"all\"/\"not_all\"~%string[] goal_names#if mode is \"not all\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveGoal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveGoal-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':goal_names (goal_names msg))
))
;//! \htmlinclude RemoveGoal-response.msg.html

(cl:defclass <RemoveGoal-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveGoal-response (<RemoveGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<RemoveGoal-response> is deprecated: use rei_robot_cruise-srv:RemoveGoal-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <RemoveGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:isSuccess-val is deprecated.  Use rei_robot_cruise-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveGoal-response>) ostream)
  "Serializes a message object of type '<RemoveGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveGoal-response>) istream)
  "Deserializes a message object of type '<RemoveGoal-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveGoal-response>)))
  "Returns string type for a service object of type '<RemoveGoal-response>"
  "rei_robot_cruise/RemoveGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveGoal-response)))
  "Returns string type for a service object of type 'RemoveGoal-response"
  "rei_robot_cruise/RemoveGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveGoal-response>)))
  "Returns md5sum for a message object of type '<RemoveGoal-response>"
  "d1f169e29b016407be028dd4d3bd5a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveGoal-response)))
  "Returns md5sum for a message object of type 'RemoveGoal-response"
  "d1f169e29b016407be028dd4d3bd5a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveGoal-response>)))
  "Returns full string definition for message of type '<RemoveGoal-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveGoal-response)))
  "Returns full string definition for message of type 'RemoveGoal-response"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveGoal-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveGoal)))
  'RemoveGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveGoal)))
  'RemoveGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveGoal)))
  "Returns string type for a service object of type '<RemoveGoal>"
  "rei_robot_cruise/RemoveGoal")