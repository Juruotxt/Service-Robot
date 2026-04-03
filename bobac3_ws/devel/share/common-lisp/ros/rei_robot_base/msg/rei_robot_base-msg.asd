
(cl:in-package :asdf)

(defsystem "rei_robot_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BumperCliff" :depends-on ("_package_BumperCliff"))
    (:file "_package_BumperCliff" :depends-on ("_package"))
    (:file "CarData" :depends-on ("_package_CarData"))
    (:file "_package_CarData" :depends-on ("_package"))
    (:file "MotorCmd" :depends-on ("_package_MotorCmd"))
    (:file "_package_MotorCmd" :depends-on ("_package"))
  ))