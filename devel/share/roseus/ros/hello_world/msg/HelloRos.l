;; Auto-generated. Do not edit!


(when (boundp 'hello_world::HelloRos)
  (if (not (find-package "HELLO_WORLD"))
    (make-package "HELLO_WORLD"))
  (shadow 'HelloRos (find-package "HELLO_WORLD")))
(unless (find-package "HELLO_WORLD::HELLOROS")
  (make-package "HELLO_WORLD::HELLOROS"))

(in-package "ROS")
;;//! \htmlinclude HelloRos.msg.html


(defclass hello_world::HelloRos
  :super ros::object
  :slots (_Ros ))

(defmethod hello_world::HelloRos
  (:init
   (&key
    ((:Ros __Ros) "")
    )
   (send-super :init)
   (setq _Ros (string __Ros))
   self)
  (:Ros
   (&optional __Ros)
   (if __Ros (setq _Ros __Ros)) _Ros)
  (:serialization-length
   ()
   (+
    ;; string _Ros
    4 (length _Ros)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Ros
       (write-long (length _Ros) s) (princ _Ros s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Ros
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Ros (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hello_world::HelloRos :md5sum-) "42b99dd7c78b4fea28033dec125a8f7f")
(setf (get hello_world::HelloRos :datatype-) "hello_world/HelloRos")
(setf (get hello_world::HelloRos :definition-)
      "# Ros Messages
string Ros

")



(provide :hello_world/HelloRos "42b99dd7c78b4fea28033dec125a8f7f")


