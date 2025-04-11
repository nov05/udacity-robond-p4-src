cmake_minimum_required(VERSION 3.5)
project(rtabmap_ros)

## begin of add, by nov05
set(cv_bridge_DIR /usr/local/share/cv_bridge/cmake) 
set(image_geometry_DIR /usr/local/share/image_geometry/cmake) 
## end of add, by nov05

find_package(catkin REQUIRED COMPONENTS
)

catkin_package()

#############
## Install ##
#############

install(DIRECTORY launch
   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

