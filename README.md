一、解决opencv和ros冲突的问题。
1、修改cv_bridge的配置文件，配置文件的目录为：
/opt/ros/melodic/share/cv_bridge/cmake/cv_bridgeConfig.cmake
修改以下两段：
图片
图片
2、重新编译cv_bridge并进行替换
运行replace_cv_bridge.sh。
