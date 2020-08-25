; Auto-generated. Do not edit!


(cl:in-package hello_world-msg)


;//! \htmlinclude HelloRos.msg.html

(cl:defclass <HelloRos> (roslisp-msg-protocol:ros-message)
  ((Ros
    :reader Ros
    :initarg :Ros
    :type cl:string
    :initform ""))
)

(cl:defclass HelloRos (<HelloRos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HelloRos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HelloRos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_world-msg:<HelloRos> is deprecated: use hello_world-msg:HelloRos instead.")))

(cl:ensure-generic-function 'Ros-val :lambda-list '(m))
(cl:defmethod Ros-val ((m <HelloRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_world-msg:Ros-val is deprecated.  Use hello_world-msg:Ros instead.")
  (Ros m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HelloRos>) ostream)
  "Serializes a message object of type '<HelloRos>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Ros))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Ros))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HelloRos>) istream)
  "Deserializes a message object of type '<HelloRos>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Ros) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Ros) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HelloRos>)))
  "Returns string type for a message object of type '<HelloRos>"
  "hello_world/HelloRos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HelloRos)))
  "Returns string type for a message object of type 'HelloRos"
  "hello_world/HelloRos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HelloRos>)))
  "Returns md5sum for a message object of type '<HelloRos>"
  "42b99dd7c78b4fea28033dec125a8f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HelloRos)))
  "Returns md5sum for a message object of type 'HelloRos"
  "42b99dd7c78b4fea28033dec125a8f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HelloRos>)))
  "Returns full string definition for message of type '<HelloRos>"
  (cl:format cl:nil "# Ros Messages~%string Ros~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HelloRos)))
  "Returns full string definition for message of type 'HelloRos"
  (cl:format cl:nil "# Ros Messages~%string Ros~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HelloRos>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Ros))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HelloRos>))
  "Converts a ROS message object to a list"
  (cl:list 'HelloRos
    (cl:cons ':Ros (Ros msg))
))
