
(cl:in-package :asdf)

(defsystem "rei_robot_cruise-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "NavGoal" :depends-on ("_package_NavGoal"))
    (:file "_package_NavGoal" :depends-on ("_package"))
  ))