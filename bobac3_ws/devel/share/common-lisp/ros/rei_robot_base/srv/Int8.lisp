; Auto-generated. Do not edit!


(cl:in-package rei_robot_base-srv)


;//! \htmlinclude Int8-request.msg.html

(cl:defclass <Int8-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int8-request (<Int8-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-srv:<Int8-request> is deprecated: use rei_robot_base-srv:Int8-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int8-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:data-val is deprecated.  Use rei_robot_base-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8-request>) ostream)
  "Serializes a message object of type '<Int8-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8-request>) istream)
  "Deserializes a message object of type '<Int8-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8-request>)))
  "Returns string type for a service object of type '<Int8-request>"
  "rei_robot_base/Int8Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8-request)))
  "Returns string type for a service object of type 'Int8-request"
  "rei_robot_base/Int8Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8-request>)))
  "Returns md5sum for a message object of type '<Int8-request>"
  "208d4ab53cf12eb941a7d93b34b7532b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8-request)))
  "Returns md5sum for a message object of type 'Int8-request"
  "208d4ab53cf12eb941a7d93b34b7532b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8-request>)))
  "Returns full string definition for message of type '<Int8-request>"
  (cl:format cl:nil "int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8-request)))
  "Returns full string definition for message of type 'Int8-request"
  (cl:format cl:nil "int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude Int8-response.msg.html

(cl:defclass <Int8-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Int8-response (<Int8-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-srv:<Int8-response> is deprecated: use rei_robot_base-srv:Int8-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Int8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:success-val is deprecated.  Use rei_robot_base-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Int8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:message-val is deprecated.  Use rei_robot_base-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8-response>) ostream)
  "Serializes a message object of type '<Int8-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8-response>) istream)
  "Deserializes a message object of type '<Int8-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8-response>)))
  "Returns string type for a service object of type '<Int8-response>"
  "rei_robot_base/Int8Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8-response)))
  "Returns string type for a service object of type 'Int8-response"
  "rei_robot_base/Int8Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8-response>)))
  "Returns md5sum for a message object of type '<Int8-response>"
  "208d4ab53cf12eb941a7d93b34b7532b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8-response)))
  "Returns md5sum for a message object of type 'Int8-response"
  "208d4ab53cf12eb941a7d93b34b7532b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8-response>)))
  "Returns full string definition for message of type '<Int8-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8-response)))
  "Returns full string definition for message of type 'Int8-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Int8)))
  'Int8-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Int8)))
  'Int8-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8)))
  "Returns string type for a service object of type '<Int8>"
  "rei_robot_base/Int8")