; Auto-generated. Do not edit!


(cl:in-package hello_world-msg)


;//! \htmlinclude motorDriver.msg.html

(cl:defclass <motorDriver> (roslisp-msg-protocol:ros-message)
  ((ENABLE_A
    :reader ENABLE_A
    :initarg :ENABLE_A
    :type cl:integer
    :initform 0)
   (ENABLE_B
    :reader ENABLE_B
    :initarg :ENABLE_B
    :type cl:integer
    :initform 0)
   (dir1
    :reader dir1
    :initarg :dir1
    :type cl:integer
    :initform 0)
   (dir2
    :reader dir2
    :initarg :dir2
    :type cl:integer
    :initform 0)
   (dir3
    :reader dir3
    :initarg :dir3
    :type cl:integer
    :initform 0)
   (dir4
    :reader dir4
    :initarg :dir4
    :type cl:integer
    :initform 0))
)

(cl:defclass motorDriver (<motorDriver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorDriver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorDriver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-msg:<motorDriver> is deprecated: use hello_world-msg:motorDriver instead.")))

(cl:ensure-generic-function 'ENABLE_A-val :lambda-list '(m))
(cl:defmethod ENABLE_A-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:ENABLE_A-val is deprecated.  Use hello_world-msg:ENABLE_A instead.")
  (ENABLE_A m))

(cl:ensure-generic-function 'ENABLE_B-val :lambda-list '(m))
(cl:defmethod ENABLE_B-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:ENABLE_B-val is deprecated.  Use hello_world-msg:ENABLE_B instead.")
  (ENABLE_B m))

(cl:ensure-generic-function 'dir1-val :lambda-list '(m))
(cl:defmethod dir1-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:dir1-val is deprecated.  Use hello_world-msg:dir1 instead.")
  (dir1 m))

(cl:ensure-generic-function 'dir2-val :lambda-list '(m))
(cl:defmethod dir2-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:dir2-val is deprecated.  Use hello_world-msg:dir2 instead.")
  (dir2 m))

(cl:ensure-generic-function 'dir3-val :lambda-list '(m))
(cl:defmethod dir3-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:dir3-val is deprecated.  Use hello_world-msg:dir3 instead.")
  (dir3 m))

(cl:ensure-generic-function 'dir4-val :lambda-list '(m))
(cl:defmethod dir4-val ((m <motorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:dir4-val is deprecated.  Use hello_world-msg:dir4 instead.")
  (dir4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorDriver>) ostream)
  "Serializes a message object of type '<motorDriver>"
  (cl:let* ((signed (cl:slot-value msg 'ENABLE_A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ENABLE_B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dir1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dir2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dir3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dir4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorDriver>) istream)
  "Deserializes a message object of type '<motorDriver>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ENABLE_A) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ENABLE_B) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir3) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir4) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorDriver>)))
  "Returns string type for a message object of type '<motorDriver>"
  "hello_world/motorDriver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorDriver)))
  "Returns string type for a message object of type 'motorDriver"
  "hello_world/motorDriver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorDriver>)))
  "Returns md5sum for a message object of type '<motorDriver>"
  "8c45e6bc60f8399dea1a593d7b7b6626")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorDriver)))
  "Returns md5sum for a message object of type 'motorDriver"
  "8c45e6bc60f8399dea1a593d7b7b6626")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorDriver>)))
  "Returns full string definition for message of type '<motorDriver>"
  (cl:format cl:nil "int64 ENABLE_A~%int64 ENABLE_B~%int64 dir1~%int64 dir2 ~%int64 dir3~%int64 dir4 ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorDriver)))
  "Returns full string definition for message of type 'motorDriver"
  (cl:format cl:nil "int64 ENABLE_A~%int64 ENABLE_B~%int64 dir1~%int64 dir2 ~%int64 dir3~%int64 dir4 ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorDriver>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorDriver>))
  "Converts a ROS message object to a list"
  (cl:list 'motorDriver
    (cl:cons ':ENABLE_A (ENABLE_A msg))
    (cl:cons ':ENABLE_B (ENABLE_B msg))
    (cl:cons ':dir1 (dir1 msg))
    (cl:cons ':dir2 (dir2 msg))
    (cl:cons ':dir3 (dir3 msg))
    (cl:cons ':dir4 (dir4 msg))
))
