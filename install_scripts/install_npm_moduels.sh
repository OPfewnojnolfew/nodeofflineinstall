#!/bin/bash


cd /home/build/npm_modules_global_offline

cp -rf ./node_modules/* /usr/local/lib/node_modules/
chmod +x /usr/local/lib/node_modules/pm2/bin/pm2
chmod +x /usr/local/lib/node_modules/pm2/bin/pm2-dev
ln -s /usr/local/lib/node_modules/pm2/bin/pm2 /usr/local/bin/pm2
ln -s /usr/local/lib/node_modules/pm2/bin/pm2-dev /usr/local/bin/pm2-dev
