; Auto-generated. Do not edit!


(cl:in-package hello_world-msg)


;//! \htmlinclude ultRangerData.msg.html

(cl:defclass <ultRangerData> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (ECHO
    :reader ECHO
    :initarg :ECHO
    :type cl:integer
    :initform 0)
   (TRIG
    :reader TRIG
    :initarg :TRIG
    :type cl:integer
    :initform 0))
)

(cl:defclass ultRangerData (<ultRangerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultRangerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultRangerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-msg:<ultRangerData> is deprecated: use hello_world-msg:ultRangerData instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ultRangerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:distance-val is deprecated.  Use hello_world-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'ECHO-val :lambda-list '(m))
(cl:defmethod ECHO-val ((m <ultRangerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:ECHO-val is deprecated.  Use hello_world-msg:ECHO instead.")
  (ECHO m))

(cl:ensure-generic-function 'TRIG-val :lambda-list '(m))
(cl:defmethod TRIG-val ((m <ultRangerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:TRIG-val is deprecated.  Use hello_world-msg:TRIG instead.")
  (TRIG m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultRangerData>) ostream)
  "Serializes a message object of type '<ultRangerData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ECHO)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TRIG)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultRangerData>) istream)
  "Deserializes a message object of type '<ultRangerData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ECHO) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TRIG) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultRangerData>)))
  "Returns string type for a message object of type '<ultRangerData>"
  "hello_world/ultRangerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultRangerData)))
  "Returns string type for a message object of type 'ultRangerData"
  "hello_world/ultRangerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultRangerData>)))
  "Returns md5sum for a message object of type '<ultRangerData>"
  "977bed47f562a4bff3f01c6a45d8dc10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultRangerData)))
  "Returns md5sum for a message object of type 'ultRangerData"
  "977bed47f562a4bff3f01c6a45d8dc10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultRangerData>)))
  "Returns full string definition for message of type '<ultRangerData>"
  (cl:format cl:nil "float64 distance~%int64 ECHO~%int64 TRIG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultRangerData)))
  "Returns full string definition for message of type 'ultRangerData"
  (cl:format cl:nil "float64 distance~%int64 ECHO~%int64 TRIG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultRangerData>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultRangerData>))
  "Converts a ROS message object to a list"
  (cl:list 'ultRangerData
    (cl:cons ':distance (distance msg))
    (cl:cons ':ECHO (ECHO msg))
    (cl:cons ':TRIG (TRIG msg))
))
