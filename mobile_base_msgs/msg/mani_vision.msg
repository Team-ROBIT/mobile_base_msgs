########################################
# Messages
########################################
# Robot mani_vision msgs.

Header  Header

########################################
int8 mode  #move_mode in tens digit & mission number in ones.

## this is move_mode num
#define none 0
#define linear 1
#define omni 2
#define box 3

##this is mission num
#define inspect 1
#define touch 2
#define insert 3
#define victim 4
#define valve 5
#define door 6
#define estop 7

########################################
## put 0 to mean non_acting, 1 for acting, 2 for complete

int8 gradient # whether the composition slanted
int8 find_left # looking for leftmost object
int8 find_right # looking for rightmost object
int8 find_middle # looking for middlemost object
int8 center # set center coordinate and move closer
int8 box_square # box finding and centering

bool missioning
bool mission_complete
bool grip
########################################
bool in_cam
bool in_center 

float32[3] difference # x, y, z diffrence
float32[3] angle # r, p, y diffrence

int8 turning_direction # 0 for none, 1 for left, 2 for right side.

float32 center_depth  
float32 high_depth  
float32 low_depth  
