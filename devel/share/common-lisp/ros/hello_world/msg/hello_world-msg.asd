
(cl:in-package :asdf)

(defsystem "hello_world-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HelloRos" :depends-on ("_package_HelloRos"))
    (:file "_package_HelloRos" :depends-on ("_package"))
    (:file "SensorData" :depends-on ("_package_SensorData"))
    (:file "_package_SensorData" :depends-on ("_package"))
    (:file "motorDriver" :depends-on ("_package_motorDriver"))
    (:file "_package_motorDriver" :depends-on ("_package"))
    (:file "ultRangerData" :depends-on ("_package_ultRangerData"))
    (:file "_package_ultRangerData" :depends-on ("_package"))
  ))