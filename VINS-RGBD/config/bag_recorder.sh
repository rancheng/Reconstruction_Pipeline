#!/bin/bash

rosbag record /camera/aligned_depth_to_color/image_raw /camera/color/image_raw /camera/imu /camera/depth/metadata /camera/color/metadata /camera/color/camera_info
