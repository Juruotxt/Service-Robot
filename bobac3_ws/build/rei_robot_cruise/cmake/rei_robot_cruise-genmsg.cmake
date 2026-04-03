# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rei_robot_cruise: 1 messages, 4 services")

set(MSG_I_FLAGS "-Irei_robot_cruise:/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rei_robot_cruise_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_custom_target(_rei_robot_cruise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rei_robot_cruise" "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" ""
)

get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_custom_target(_rei_robot_cruise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rei_robot_cruise" "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_custom_target(_rei_robot_cruise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rei_robot_cruise" "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" ""
)

get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_custom_target(_rei_robot_cruise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rei_robot_cruise" "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" ""
)

get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_custom_target(_rei_robot_cruise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rei_robot_cruise" "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" "rei_robot_cruise/NavGoal:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
)

### Generating Services
_generate_srv_cpp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_cpp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_cpp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv"
  "${MSG_I_FLAGS}"
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_cpp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
)

### Generating Module File
_generate_module_cpp(rei_robot_cruise
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rei_robot_cruise_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rei_robot_cruise_generate_messages rei_robot_cruise_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_cpp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_cpp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_cpp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_cpp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_cpp _rei_robot_cruise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rei_robot_cruise_gencpp)
add_dependencies(rei_robot_cruise_gencpp rei_robot_cruise_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rei_robot_cruise_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
)

### Generating Services
_generate_srv_eus(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_eus(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_eus(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv"
  "${MSG_I_FLAGS}"
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_eus(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
)

### Generating Module File
_generate_module_eus(rei_robot_cruise
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rei_robot_cruise_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rei_robot_cruise_generate_messages rei_robot_cruise_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_eus _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_eus _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_eus _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_eus _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_eus _rei_robot_cruise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rei_robot_cruise_geneus)
add_dependencies(rei_robot_cruise_geneus rei_robot_cruise_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rei_robot_cruise_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
)

### Generating Services
_generate_srv_lisp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_lisp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_lisp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv"
  "${MSG_I_FLAGS}"
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_lisp(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
)

### Generating Module File
_generate_module_lisp(rei_robot_cruise
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rei_robot_cruise_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rei_robot_cruise_generate_messages rei_robot_cruise_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_lisp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_lisp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_lisp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_lisp _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_lisp _rei_robot_cruise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rei_robot_cruise_genlisp)
add_dependencies(rei_robot_cruise_genlisp rei_robot_cruise_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rei_robot_cruise_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
)

### Generating Services
_generate_srv_nodejs(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_nodejs(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_nodejs(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv"
  "${MSG_I_FLAGS}"
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_nodejs(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
)

### Generating Module File
_generate_module_nodejs(rei_robot_cruise
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rei_robot_cruise_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rei_robot_cruise_generate_messages rei_robot_cruise_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_nodejs _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_nodejs _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_nodejs _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_nodejs _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_nodejs _rei_robot_cruise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rei_robot_cruise_gennodejs)
add_dependencies(rei_robot_cruise_gennodejs rei_robot_cruise_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rei_robot_cruise_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
)

### Generating Services
_generate_srv_py(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_py(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_py(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv"
  "${MSG_I_FLAGS}"
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
)
_generate_srv_py(rei_robot_cruise
  "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
)

### Generating Module File
_generate_module_py(rei_robot_cruise
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rei_robot_cruise_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rei_robot_cruise_generate_messages rei_robot_cruise_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/StartStopNav.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_py _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/msg/NavGoal.msg" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_py _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetNavOrder.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_py _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/RemoveGoal.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_py _rei_robot_cruise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bobac3/bobac3_ws/src/rei_robot_cruise/srv/SetGoals.srv" NAME_WE)
add_dependencies(rei_robot_cruise_generate_messages_py _rei_robot_cruise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rei_robot_cruise_genpy)
add_dependencies(rei_robot_cruise_genpy rei_robot_cruise_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rei_robot_cruise_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rei_robot_cruise
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rei_robot_cruise_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rei_robot_cruise
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rei_robot_cruise_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rei_robot_cruise
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rei_robot_cruise_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rei_robot_cruise
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rei_robot_cruise_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rei_robot_cruise
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rei_robot_cruise_generate_messages_py geometry_msgs_generate_messages_py)
endif()
