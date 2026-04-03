; Auto-generated. Do not edit!


(cl:in-package rei_robot_cruise-srv)


;//! \htmlinclude StartStopNav-request.msg.html

(cl:defclass <StartStopNav-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StartStopNav-request (<StartStopNav-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStopNav-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStopNav-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<StartStopNav-request> is deprecated: use rei_robot_cruise-srv:StartStopNav-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <StartStopNav-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:mode-val is deprecated.  Use rei_robot_cruise-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <StartStopNav-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:level-val is deprecated.  Use rei_robot_cruise-srv:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStopNav-request>) ostream)
  "Serializes a message object of type '<StartStopNav-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStopNav-request>) istream)
  "Deserializes a message object of type '<StartStopNav-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStopNav-request>)))
  "Returns string type for a service object of type '<StartStopNav-request>"
  "rei_robot_cruise/StartStopNavRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStopNav-request)))
  "Returns string type for a service object of type 'StartStopNav-request"
  "rei_robot_cruise/StartStopNavRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStopNav-request>)))
  "Returns md5sum for a message object of type '<StartStopNav-request>"
  "997ae050ff0c195c83d9c11c0633ef89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStopNav-request)))
  "Returns md5sum for a message object of type 'StartStopNav-request"
  "997ae050ff0c195c83d9c11c0633ef89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStopNav-request>)))
  "Returns full string definition for message of type '<StartStopNav-request>"
  (cl:format cl:nil "string mode #'stop':stop the task, 'paush': paush the task, \"start\"~%int8 level #'0': action after current goal finished, '1':action immediately~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStopNav-request)))
  "Returns full string definition for message of type 'StartStopNav-request"
  (cl:format cl:nil "string mode #'stop':stop the task, 'paush': paush the task, \"start\"~%int8 level #'0': action after current goal finished, '1':action immediately~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStopNav-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStopNav-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStopNav-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':level (level msg))
))
;//! \htmlinclude StartStopNav-response.msg.html

(cl:defclass <StartStopNav-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartStopNav-response (<StartStopNav-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStopNav-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStopNav-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<StartStopNav-response> is deprecated: use rei_robot_cruise-srv:StartStopNav-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <StartStopNav-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:isSuccess-val is deprecated.  Use rei_robot_cruise-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStopNav-response>) ostream)
  "Serializes a message object of type '<StartStopNav-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStopNav-response>) istream)
  "Deserializes a message object of type '<StartStopNav-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStopNav-response>)))
  "Returns string type for a service object of type '<StartStopNav-response>"
  "rei_robot_cruise/StartStopNavResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStopNav-response)))
  "Returns string type for a service object of type 'StartStopNav-response"
  "rei_robot_cruise/StartStopNavResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStopNav-response>)))
  "Returns md5sum for a message object of type '<StartStopNav-response>"
  "997ae050ff0c195c83d9c11c0633ef89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStopNav-response)))
  "Returns md5sum for a message object of type 'StartStopNav-response"
  "997ae050ff0c195c83d9c11c0633ef89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStopNav-response>)))
  "Returns full string definition for message of type '<StartStopNav-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStopNav-response)))
  "Returns full string definition for message of type 'StartStopNav-response"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStopNav-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStopNav-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStopNav-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartStopNav)))
  'StartStopNav-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartStopNav)))
  'StartStopNav-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStopNav)))
  "Returns string type for a service object of type '<StartStopNav>"
  "rei_robot_cruise/StartStopNav")