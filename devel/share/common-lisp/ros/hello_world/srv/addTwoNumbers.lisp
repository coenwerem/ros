; Auto-generated. Do not edit!


(cl:in-package hello_world-srv)


;//! \htmlinclude addTwoNumbers-request.msg.html

(cl:defclass <addTwoNumbers-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass addTwoNumbers-request (<addTwoNumbers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoNumbers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoNumbers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-srv:<addTwoNumbers-request> is deprecated: use hello_world-srv:addTwoNumbers-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <addTwoNumbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-srv:x-val is deprecated.  Use hello_world-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <addTwoNumbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-srv:y-val is deprecated.  Use hello_world-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoNumbers-request>) ostream)
  "Serializes a message object of type '<addTwoNumbers-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoNumbers-request>) istream)
  "Deserializes a message object of type '<addTwoNumbers-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoNumbers-request>)))
  "Returns string type for a service object of type '<addTwoNumbers-request>"
  "hello_world/addTwoNumbersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNumbers-request)))
  "Returns string type for a service object of type 'addTwoNumbers-request"
  "hello_world/addTwoNumbersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoNumbers-request>)))
  "Returns md5sum for a message object of type '<addTwoNumbers-request>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoNumbers-request)))
  "Returns md5sum for a message object of type 'addTwoNumbers-request"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoNumbers-request>)))
  "Returns full string definition for message of type '<addTwoNumbers-request>"
  (cl:format cl:nil "#request field~%~%int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoNumbers-request)))
  "Returns full string definition for message of type 'addTwoNumbers-request"
  (cl:format cl:nil "#request field~%~%int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoNumbers-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoNumbers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoNumbers-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude addTwoNumbers-response.msg.html

(cl:defclass <addTwoNumbers-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass addTwoNumbers-response (<addTwoNumbers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoNumbers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoNumbers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-srv:<addTwoNumbers-response> is deprecated: use hello_world-srv:addTwoNumbers-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <addTwoNumbers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-srv:sum-val is deprecated.  Use hello_world-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoNumbers-response>) ostream)
  "Serializes a message object of type '<addTwoNumbers-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoNumbers-response>) istream)
  "Deserializes a message object of type '<addTwoNumbers-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoNumbers-response>)))
  "Returns string type for a service object of type '<addTwoNumbers-response>"
  "hello_world/addTwoNumbersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNumbers-response)))
  "Returns string type for a service object of type 'addTwoNumbers-response"
  "hello_world/addTwoNumbersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoNumbers-response>)))
  "Returns md5sum for a message object of type '<addTwoNumbers-response>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoNumbers-response)))
  "Returns md5sum for a message object of type 'addTwoNumbers-response"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoNumbers-response>)))
  "Returns full string definition for message of type '<addTwoNumbers-response>"
  (cl:format cl:nil "~%#response field~%~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoNumbers-response)))
  "Returns full string definition for message of type 'addTwoNumbers-response"
  (cl:format cl:nil "~%#response field~%~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoNumbers-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoNumbers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoNumbers-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addTwoNumbers)))
  'addTwoNumbers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addTwoNumbers)))
  'addTwoNumbers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNumbers)))
  "Returns string type for a service object of type '<addTwoNumbers>"
  "hello_world/addTwoNumbers")