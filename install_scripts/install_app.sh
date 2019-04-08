#!/bin/bash
# 安装应用

cd /home/build

if [ ! -d "/home/koapp" ]; then
    mkdir /home/koapp
fi

cp -rf ./app/* /home/koapp/
