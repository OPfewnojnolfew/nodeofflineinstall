#!/bin/bash
# 安装nodejs
cd /home/build
tar xvJf  node-v10.15.3-linux-x64.tar.xz
cd node-v10.15.3-linux-x64
cp -r ./lib/node_modules/ /usr/local/lib/ # copy the node modules folder to the /lib/ folder
cp -r ./include/node /usr/local/include/ # copy the /include/node folder to /usr/local/include folder
mkdir -p /usr/local/man/man1 # create the man folder
cp ./share/man/man1/node.1 /usr/local/man/man1/ # copy the man file
cp ./bin/node /usr/local/bin/ # copy node to the bin folder
ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm ## making the symbolic link to npm
