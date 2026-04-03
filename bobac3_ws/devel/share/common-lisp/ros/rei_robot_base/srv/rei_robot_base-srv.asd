
(cl:in-package :asdf)

(defsystem "rei_robot_base-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Int8" :depends-on ("_package_Int8"))
    (:file "_package_Int8" :depends-on ("_package"))
    (:file "SetIO" :depends-on ("_package_SetIO"))
    (:file "_package_SetIO" :depends-on ("_package"))
  ))