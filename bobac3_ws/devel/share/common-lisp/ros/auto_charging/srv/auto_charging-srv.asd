
(cl:in-package :asdf)

(defsystem "auto_charging-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetCharge" :depends-on ("_package_SetCharge"))
    (:file "_package_SetCharge" :depends-on ("_package"))
  ))