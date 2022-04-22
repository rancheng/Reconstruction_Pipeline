#!/bin/bash

file_dir=`dirname $0`

# get parameter from system
user=`id -un`
group=`id -gn`
uid=`id -u`
gid=`id -g`

# build docker images
docker build -t registry.server.com:5000/work/vinsrgbd \
    --build-arg http_proxy=http://proxyserver.com:7890 \
    --build-arg https_proxy=http://proxyserver.com:7890 \
    --build-arg USER=${user} \
    --build-arg UID=${uid} \
    --build-arg GROUP=${group} \
    --build-arg GID=${gid} \
    ${file_dir}
