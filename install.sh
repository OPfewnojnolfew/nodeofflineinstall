#!/bin/bash

file_path=$(cd $(dirname $0)/; pwd)
echo -e "安装目录为"$file_path

#安装nodejs
echo -e "开始安装nodejs"
node_path=$file_path/node-v10.15.3-linux-x64
tar xvJf  $file_path/node-v10.15.3-linux-x64.tar.xz
cp -r $node_path/lib/node_modules/ /usr/local/lib/
cp -r $node_path/include/node /usr/local/include/
cp $node_path/bin/node /usr/local/bin/
mkdir -p /usr/local/man/man1
cp $node_path/share/man/man1/node.1 /usr/local/man/man1/
cp $node_path/bin/node /usr/local/bin/
ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm
echo -e "nodejs安装完成"

#安装公共npm_moduels依赖
echo -e "开始安装npm_moduels依赖"
npm_modules_path=$file_path/npm_modules_global_offline
cp -rf $npm_modules_path/node_modules/* /usr/local/lib/node_modules/
chmod +x /usr/local/lib/node_modules/pm2/bin/pm2
chmod +x /usr/local/lib/node_modules/pm2/bin/pm2-dev
ln -s /usr/local/lib/node_modules/pm2/bin/pm2 /usr/local/bin/pm2
ln -s /usr/local/lib/node_modules/pm2/bin/pm2-dev /usr/local/bin/pm2-dev
echo -e "npm_moduels依赖安装完成"

#安装应用
echo -e "开始安装应用"
if [ ! -d "/home/koapp" ]; then
    mkdir /home/koapp
fi
cp -rf $file_path/app/* /home/koapp/
echo -e "应用安装完成"
