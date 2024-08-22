# mobile_base_msgs
**Author** : <a href="https://github.com/mjlee111"><img src="https://img.shields.io/badge/Myeong Jin Lee-white?style=flat&logo=github&logoColor=red"/></a>
<a href="https://github.com/minseokle"><img src="https://img.shields.io/badge/Min Seok Lee-white?style=flat&logo=github&logoColor=red"/></a>   <a href="https://github.com/lee-sunkyoung"><img src="https://img.shields.io/badge/Sun Kyoung Lee-white?style=flat&logo=github&logoColor=red"/></a>   
**Version** : 1.0   
**License** : Apache 2.0      
**Maintainor** : Lee <menggu1234@naver.com>   
**Bug / feature tracker** : https://github.com/RO-BIT-Intelligence-Robot-Team/mobile_base_msgs/issues   
**Source** : https://github.com/RO-BIT-Intelligence-Robot-Team/mobile_base_msgs.git (branch : master)

## Description
ROS msg package for 4 Flippered Mobile Robot. Tested on ROS noetic.
## Table of Contents
- [Build & Usage](#build--usage)
- [msgs](#msgs)

## Build & Usage
#### Build from source code
```shell
$ cd ~/${workspace_name}_ws/src
$ git clone https://github.com/RO-BIT-Intelligence-Robot-Team/mobile_base_msgs.git
$ cd ..
$ catkin_make
```

#### How to use 
##### CMakeLists.txt
```CMakeLists
find_package(mobile_base_msgs)
target_link_libraries(${PROJECT_NAME}
    mobile_base_msgs 
)
```
##### package.xml
```xml
  <build_depend>mobile_base_msgs</build_depend>
  <run_depend>mobile_base_msgs</run_depend>
```
##### Source Code
```cpp
#include <mobile_base_msgs/${msg_you_need}.h>
```

## msgs
<details>
    <summary>  dynamixel_control </span> </summary>

```msg
########################################
# Messages
########################################
# dynamixel control msgs.

float64 profile_acceleration  #rad/s^2
float64 profile_velocity      #rad/s
float64 goal_position         #rad
```
</details>

<details>
    <summary>  dynamixel_status </span> </summary>

```msg
########################################
# Messages
########################################
# dynamixel_status msgs.

bool torque                 # on : 1 , off : 0
uint8 hardware_error_status # https://emanual.robotis.com/docs/kr/dxl/mx/mx-106-2/#shutdown63
bool moving                 # moving : 1 , stop : 0
bool in_position            # in position : 1 , out position : 0
float64 present_current     # A
float64 present_velocity    # rps
float64 present_position    # rad
```
</details>

<details>
    <summary>  flipper_control </span> </summary>

```msg
########################################
# Messages
########################################
# Robot flipper control msgs.

float32 target_pos    #degree
float32 target_vel    #rpm
float32 target_acc    #rpm/s
bool    init_req
```
</details>

<details>
    <summary>  flipper_status </span> </summary>

```msg
########################################
# Messages
########################################
# Robot flipper status msgs.

float32 present_pos   #deg
float32 present_vel   #rpm
float32 present_cur   #A
float32 present_temp  #C
int8    error_code
bool    init_done
bool    connect
```
</details>
