#!/bin/bash

# 卸载应用
echo -e "开始卸载应用"
rm -rf  /home/koapp
echo -e "应用卸载完成"

# 卸载公共node_modules
echo -e "开始卸载pm2"
rm -rf /usr/local/bin/pm2-dev
rm -rf /usr/local/bin/pm2
rm -rf /usr/local/lib/node_modules/pm2
echo -e "pm2卸载完成"

# 卸载nodejs
echo -e "开始卸载nodejs"
rm -rf /usr/local/bin/npm
rm -f /usr/local/bin/node
rm -rf /usr/local/man/man1/
rm -rf /usr/local/include/node
rm -rf /usr/local/lib/node_modules
echo -e "nodejs卸载完成"

