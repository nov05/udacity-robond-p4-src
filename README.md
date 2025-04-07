# udacity-robond-p4-src
Project 4 Map The World, Course 5 Mapping And SLAM, Udacity ND209 Robotics 


* `$ gedit ~/.bashrc` for this ROS Catkin workspace.

* Version 2.0 

```sh
##################################################################################
## for catkin_ws3, added by nov05 
##################################################################################
cd ~/catkin_ws3/src
git pull
cd ~/catkin_ws3

export _PKG_CONFIG_PATH=
source /opt/ros/noetic/setup.bash
export _PKG_CONFIG_PATH=$PKG_CONFIG_PATH
for ws in ~/catkin_ws ~/catkin_ws2 ~/catkin_ws3; do
  source "$ws/devel/setup.bash"
  export _PKG_CONFIG_PATH="$PKG_CONFIG_PATH${_PKG_CONFIG_PATH:+:$_PKG_CONFIG_PATH}"
done
export PKG_CONFIG_PATH=$(echo "$_PKG_CONFIG_PATH" | tr ':' '\n' | tac | awk '!seen[$0]++' | tac | paste -sd ':' -):/usr/lib/x86_64-linux-gnu/pkgconfig
unset _PKG_CONFIG_PATH
echo "\$PKG_CONFIG_PATH=$PKG_CONFIG_PATH"

export ROS_PACKAGE_PATH=/home/robond/catkin_ws3/src:/home/robond/catkin_ws2/src:/home/robond/catkin_ws/src:/opt/ros/noetic/share
echo "\$ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH"

export PATH=/usr/local/cuda-12.2/bin:$PATH
export CUDADIR=/usr/local/cuda-12.2
export CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-12.2
export LD_LIBRARY_PATH=/usr/local/cuda-12.2/lib64:$LD_LIBRARY_PATH

export TURTLEBOT3_MODEL=burger_for_autorace
echo "\$TURTLEBOT3_MODEL=$TURTLEBOT3_MODEL"
##################################################################################
```

* Version 1.0  

```sh
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
source ~/catkin_ws2/devel/setup.bash
export TURTLEBOT3_MODEL=burger_for_autorace
cd ~/catkin_ws3/src
git pull
cd ~/catkin_ws3
source ~/catkin_ws3/devel/setup.bash
```
