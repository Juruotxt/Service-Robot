; Auto-generated. Do not edit!


(cl:in-package auto_charging-srv)


;//! \htmlinclude SetCharge-request.msg.html

(cl:defclass <SetCharge-request> (roslisp-msg-protocol:ros-message)
  ((nav
    :reader nav
    :initarg :nav
    :type cl:boolean
    :initform cl:nil)
   (ar_track
    :reader ar_track
    :initarg :ar_track
    :type cl:boolean
    :initform cl:nil)
   (ar_id
    :reader ar_id
    :initarg :ar_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetCharge-request (<SetCharge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCharge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCharge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_charging-srv:<SetCharge-request> is deprecated: use auto_charging-srv:SetCharge-request instead.")))

(cl:ensure-generic-function 'nav-val :lambda-list '(m))
(cl:defmethod nav-val ((m <SetCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charging-srv:nav-val is deprecated.  Use auto_charging-srv:nav instead.")
  (nav m))

(cl:ensure-generic-function 'ar_track-val :lambda-list '(m))
(cl:defmethod ar_track-val ((m <SetCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charging-srv:ar_track-val is deprecated.  Use auto_charging-srv:ar_track instead.")
  (ar_track m))

(cl:ensure-generic-function 'ar_id-val :lambda-list '(m))
(cl:defmethod ar_id-val ((m <SetCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charging-srv:ar_id-val is deprecated.  Use auto_charging-srv:ar_id instead.")
  (ar_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCharge-request>) ostream)
  "Serializes a message object of type '<SetCharge-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nav) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ar_track) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ar_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCharge-request>) istream)
  "Deserializes a message object of type '<SetCharge-request>"
    (cl:setf (cl:slot-value msg 'nav) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ar_track) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ar_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCharge-request>)))
  "Returns string type for a service object of type '<SetCharge-request>"
  "auto_charging/SetChargeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge-request)))
  "Returns string type for a service object of type 'SetCharge-request"
  "auto_charging/SetChargeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCharge-request>)))
  "Returns md5sum for a message object of type '<SetCharge-request>"
  "3584daae5e4de369ae6b70e57de9d866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCharge-request)))
  "Returns md5sum for a message object of type 'SetCharge-request"
  "3584daae5e4de369ae6b70e57de9d866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCharge-request>)))
  "Returns full string definition for message of type '<SetCharge-request>"
  (cl:format cl:nil "bool nav~%bool ar_track ~%int8 ar_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCharge-request)))
  "Returns full string definition for message of type 'SetCharge-request"
  (cl:format cl:nil "bool nav~%bool ar_track ~%int8 ar_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCharge-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCharge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCharge-request
    (cl:cons ':nav (nav msg))
    (cl:cons ':ar_track (ar_track msg))
    (cl:cons ':ar_id (ar_id msg))
))
;//! \htmlinclude SetCharge-response.msg.html

(cl:defclass <SetCharge-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCharge-response (<SetCharge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCharge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCharge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_charging-srv:<SetCharge-response> is deprecated: use auto_charging-srv:SetCharge-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charging-srv:message-val is deprecated.  Use auto_charging-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_charging-srv:success-val is deprecated.  Use auto_charging-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCharge-response>) ostream)
  "Serializes a message object of type '<SetCharge-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCharge-response>) istream)
  "Deserializes a message object of type '<SetCharge-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCharge-response>)))
  "Returns string type for a service object of type '<SetCharge-response>"
  "auto_charging/SetChargeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge-response)))
  "Returns string type for a service object of type 'SetCharge-response"
  "auto_charging/SetChargeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCharge-response>)))
  "Returns md5sum for a message object of type '<SetCharge-response>"
  "3584daae5e4de369ae6b70e57de9d866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCharge-response)))
  "Returns md5sum for a message object of type 'SetCharge-response"
  "3584daae5e4de369ae6b70e57de9d866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCharge-response>)))
  "Returns full string definition for message of type '<SetCharge-response>"
  (cl:format cl:nil "string message~%bool success ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCharge-response)))
  "Returns full string definition for message of type 'SetCharge-response"
  (cl:format cl:nil "string message~%bool success ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCharge-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCharge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCharge-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCharge)))
  'SetCharge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCharge)))
  'SetCharge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge)))
  "Returns string type for a service object of type '<SetCharge>"
  "auto_charging/SetCharge")