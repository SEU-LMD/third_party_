#！/bin/bash
sudo rm -rf vision_opencv
git clone --branch=melodic https://github.com/ros-perception/vision_opencv.git
cd vision_opencv
cd cv_bridge/
mkdir build
cd build/
cmake ..
make
cd devel/
cd lib/
dir_abs_path=$(pwd)
cd /opt/ros/melodic/lib
sudo rm libcv_bridge.so
sudo cp ${dir_abs_path}/libcv_bridge.so .
