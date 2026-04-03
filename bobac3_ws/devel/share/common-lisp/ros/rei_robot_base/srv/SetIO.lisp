; Auto-generated. Do not edit!


(cl:in-package rei_robot_base-srv)


;//! \htmlinclude SetIO-request.msg.html

(cl:defclass <SetIO-request> (roslisp-msg-protocol:ros-message)
  ((all_off
    :reader all_off
    :initarg :all_off
    :type cl:boolean
    :initform cl:nil)
   (all_on
    :reader all_on
    :initarg :all_on
    :type cl:boolean
    :initform cl:nil)
   (io
    :reader io
    :initarg :io
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIO-request (<SetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-srv:<SetIO-request> is deprecated: use rei_robot_base-srv:SetIO-request instead.")))

(cl:ensure-generic-function 'all_off-val :lambda-list '(m))
(cl:defmethod all_off-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:all_off-val is deprecated.  Use rei_robot_base-srv:all_off instead.")
  (all_off m))

(cl:ensure-generic-function 'all_on-val :lambda-list '(m))
(cl:defmethod all_on-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:all_on-val is deprecated.  Use rei_robot_base-srv:all_on instead.")
  (all_on m))

(cl:ensure-generic-function 'io-val :lambda-list '(m))
(cl:defmethod io-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:io-val is deprecated.  Use rei_robot_base-srv:io instead.")
  (io m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:state-val is deprecated.  Use rei_robot_base-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-request>) ostream)
  "Serializes a message object of type '<SetIO-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'all_off) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'all_on) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'io))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'io))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-request>) istream)
  "Deserializes a message object of type '<SetIO-request>"
    (cl:setf (cl:slot-value msg 'all_off) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'all_on) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'io) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'io)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-request>)))
  "Returns string type for a service object of type '<SetIO-request>"
  "rei_robot_base/SetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-request)))
  "Returns string type for a service object of type 'SetIO-request"
  "rei_robot_base/SetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-request>)))
  "Returns md5sum for a message object of type '<SetIO-request>"
  "070183f95a96810ab8072eb2bc773618")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-request)))
  "Returns md5sum for a message object of type 'SetIO-request"
  "070183f95a96810ab8072eb2bc773618")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-request>)))
  "Returns full string definition for message of type '<SetIO-request>"
  (cl:format cl:nil "bool all_off~%bool all_on ~%int8[] io~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-request)))
  "Returns full string definition for message of type 'SetIO-request"
  (cl:format cl:nil "bool all_off~%bool all_on ~%int8[] io~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-request>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'io) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-request
    (cl:cons ':all_off (all_off msg))
    (cl:cons ':all_on (all_on msg))
    (cl:cons ':io (io msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetIO-response.msg.html

(cl:defclass <SetIO-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIO-response (<SetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rei_robot_base-srv:<SetIO-response> is deprecated: use rei_robot_base-srv:SetIO-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:success-val is deprecated.  Use rei_robot_base-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rei_robot_base-srv:message-val is deprecated.  Use rei_robot_base-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-response>) ostream)
  "Serializes a message object of type '<SetIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-response>) istream)
  "Deserializes a message object of type '<SetIO-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-response>)))
  "Returns string type for a service object of type '<SetIO-response>"
  "rei_robot_base/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-response)))
  "Returns string type for a service object of type 'SetIO-response"
  "rei_robot_base/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-response>)))
  "Returns md5sum for a message object of type '<SetIO-response>"
  "070183f95a96810ab8072eb2bc773618")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-response)))
  "Returns md5sum for a message object of type 'SetIO-response"
  "070183f95a96810ab8072eb2bc773618")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-response>)))
  "Returns full string definition for message of type '<SetIO-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-response)))
  "Returns full string definition for message of type 'SetIO-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIO)))
  'SetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIO)))
  'SetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO)))
  "Returns string type for a service object of type '<SetIO>"
  "rei_robot_base/SetIO")