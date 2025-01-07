cmake_minimum_required(VERSION 3.8)
project(mobile_base_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

# Add message files
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/defense/ManiVisionDefense.msg"
  "msg/defense/VisionPath.msg" 

  "msg/rescue/ManiVision.msg"
  "msg/rescue/BoundingBox.msg"
  "msg/rescue/BoundingBoxArray.msg"
  "msg/rescue/Detect.msg"
  
  "msg/RobotCommunication.msg"
  "msg/FlipperControlBase.msg"
  "msg/FlipperControl.msg"
  "msg/FlipperStatus.msg"
  "msg/VescStatus.msg"
  "msg/VescControl.msg"
  "msg/STMtx.msg"
  "msg/STMrx.msg"
  "msg/DynamixelControl.msg"
  "msg/DynamixelStatus.msg"
  "msg/ManipulatorControl.msg"
  "msg/ManipulatorStatus.msg"
  "msg/LaunchStatus.msg"
  DEPENDENCIES geometry_msgs sensor_msgs std_msgs builtin_interfaces
)

# Install messages
install(DIRECTORY msg
  DESTINATION share/${PROJECT_NAME}/msg
)

ament_package()
