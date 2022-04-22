# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;gflags_catkin;interactive_markers;minkindr_conversions;pcl_conversions;pcl_ros;sensor_msgs;tf;voxblox;voxblox_msgs;voxblox_rviz_plugin".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lvoxblox_ros".split(';') if "-lvoxblox_ros" != "" else []
PROJECT_NAME = "voxblox_ros"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "0.0.0"
