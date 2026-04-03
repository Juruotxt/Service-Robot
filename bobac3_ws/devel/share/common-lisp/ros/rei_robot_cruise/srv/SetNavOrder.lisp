; Auto-generated. Do not edit!


(cl:in-package rei_robot_cruise-srv)


;//! \htmlinclude SetNavOrder-request.msg.html

(cl:defclass <SetNavOrder-request> (roslisp-msg-protocol:ros-message)
  ((loop_time
    :reader loop_time
    :initarg :loop_time
    :type cl:fixnum
    :initform 0)
   (goal_order
    :reader goal_order
    :initarg :goal_order
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (callback_order
    :reader callback_order
    :initarg :callback_order
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetNavOrder-request (<SetNavOrder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavOrder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavOrder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<SetNavOrder-request> is deprecated: use rei_robot_cruise-srv:SetNavOrder-request instead.")))

(cl:ensure-generic-function 'loop_time-val :lambda-list '(m))
(cl:defmethod loop_time-val ((m <SetNavOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:loop_time-val is deprecated.  Use rei_robot_cruise-srv:loop_time instead.")
  (loop_time m))

(cl:ensure-generic-function 'goal_order-val :lambda-list '(m))
(cl:defmethod goal_order-val ((m <SetNavOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:goal_order-val is deprecated.  Use rei_robot_cruise-srv:goal_order instead.")
  (goal_order m))

(cl:ensure-generic-function 'callback_order-val :lambda-list '(m))
(cl:defmethod callback_order-val ((m <SetNavOrder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:callback_order-val is deprecated.  Use rei_robot_cruise-srv:callback_order instead.")
  (callback_order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavOrder-request>) ostream)
  "Serializes a message object of type '<SetNavOrder-request>"
  (cl:let* ((signed (cl:slot-value msg 'loop_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_order))))
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
   (cl:slot-value msg 'goal_order))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'callback_order))))
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
   (cl:slot-value msg 'callback_order))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavOrder-request>) istream)
  "Deserializes a message object of type '<SetNavOrder-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loop_time) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_order) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_order)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'callback_order) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'callback_order)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavOrder-request>)))
  "Returns string type for a service object of type '<SetNavOrder-request>"
  "rei_robot_cruise/SetNavOrderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavOrder-request)))
  "Returns string type for a service object of type 'SetNavOrder-request"
  "rei_robot_cruise/SetNavOrderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavOrder-request>)))
  "Returns md5sum for a message object of type '<SetNavOrder-request>"
  "40f5672c1f1f412d28deb80740b471de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavOrder-request)))
  "Returns md5sum for a message object of type 'SetNavOrder-request"
  "40f5672c1f1f412d28deb80740b471de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavOrder-request>)))
  "Returns full string definition for message of type '<SetNavOrder-request>"
  (cl:format cl:nil "int16 loop_time #0 means infinite~%string[] goal_order~%string[] callback_order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavOrder-request)))
  "Returns full string definition for message of type 'SetNavOrder-request"
  (cl:format cl:nil "int16 loop_time #0 means infinite~%string[] goal_order~%string[] callback_order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavOrder-request>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_order) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'callback_order) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavOrder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavOrder-request
    (cl:cons ':loop_time (loop_time msg))
    (cl:cons ':goal_order (goal_order msg))
    (cl:cons ':callback_order (callback_order msg))
))
;//! \htmlinclude SetNavOrder-response.msg.html

(cl:defclass <SetNavOrder-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetNavOrder-response (<SetNavOrder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavOrder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavOrder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_cruise-srv:<SetNavOrder-response> is deprecated: use rei_robot_cruise-srv:SetNavOrder-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetNavOrder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:message-val is deprecated.  Use rei_robot_cruise-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <SetNavOrder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_cruise-srv:isSuccess-val is deprecated.  Use rei_robot_cruise-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavOrder-response>) ostream)
  "Serializes a message object of type '<SetNavOrder-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavOrder-response>) istream)
  "Deserializes a message object of type '<SetNavOrder-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavOrder-response>)))
  "Returns string type for a service object of type '<SetNavOrder-response>"
  "rei_robot_cruise/SetNavOrderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavOrder-response)))
  "Returns string type for a service object of type 'SetNavOrder-response"
  "rei_robot_cruise/SetNavOrderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavOrder-response>)))
  "Returns md5sum for a message object of type '<SetNavOrder-response>"
  "40f5672c1f1f412d28deb80740b471de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavOrder-response)))
  "Returns md5sum for a message object of type 'SetNavOrder-response"
  "40f5672c1f1f412d28deb80740b471de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavOrder-response>)))
  "Returns full string definition for message of type '<SetNavOrder-response>"
  (cl:format cl:nil "string message~%bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavOrder-response)))
  "Returns full string definition for message of type 'SetNavOrder-response"
  (cl:format cl:nil "string message~%bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavOrder-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavOrder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavOrder-response
    (cl:cons ':message (message msg))
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNavOrder)))
  'SetNavOrder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNavOrder)))
  'SetNavOrder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavOrder)))
  "Returns string type for a service object of type '<SetNavOrder>"
  "rei_robot_cruise/SetNavOrder")