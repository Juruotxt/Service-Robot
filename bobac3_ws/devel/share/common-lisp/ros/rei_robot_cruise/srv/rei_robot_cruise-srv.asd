
(cl:in-package :asdf)

(defsystem "rei_robot_cruise-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rei_robot_cruise-msg
)
  :components ((:file "_package")
    (:file "RemoveGoal" :depends-on ("_package_RemoveGoal"))
    (:file "_package_RemoveGoal" :depends-on ("_package"))
    (:file "SetGoals" :depends-on ("_package_SetGoals"))
    (:file "_package_SetGoals" :depends-on ("_package"))
    (:file "SetNavOrder" :depends-on ("_package_SetNavOrder"))
    (:file "_package_SetNavOrder" :depends-on ("_package"))
    (:file "StartStopNav" :depends-on ("_package_StartStopNav"))
    (:file "_package_StartStopNav" :depends-on ("_package"))
  ))