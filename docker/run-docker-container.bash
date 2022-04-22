#!/bin/bash

# get parameter from system
user=`id -un`

# start sharing xhost
xhost +local:root

# run docker
docker run --rm \
  --ipc=host \
  --gpus all \
  --privileged \
  -p 3752:22 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v $HOME/.Xauthority:$docker/.Xauthority \
  -v $HOME/work:$HOME/work \
  -v /mnt/Data/Datasets:/mnt/Data/Datasets \
  -e http_proxy=http://proxyserver.com:7890 \
  -e https_proxy=http://proxyserver.com:7890 \
  -e XAUTHORITY=$home_folder/.Xauthority \
  -e DISPLAY=$DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -it registry.server.com:5000/work/vinsrgbd
