
(cl:in-package :asdf)

(defsystem "hello_world-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addTwoNumbers" :depends-on ("_package_addTwoNumbers"))
    (:file "_package_addTwoNumbers" :depends-on ("_package"))
  ))