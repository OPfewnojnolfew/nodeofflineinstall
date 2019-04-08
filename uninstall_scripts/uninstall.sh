#!/bin/bash

commands=(
    ./uninstall_app.sh "uninstall  application"
    ./uninstall_npm_moduels.sh "uninstall npm modules"
    ./unstall_node.sh "uninstall nodejs"
)

commands_len=${#commands[@]}

for (( i=0; i<$commands_len; i=i+2 ))
do
    desc_index=i+1
    desc=${commands[$desc_index]}
    
    echo -e $desc" - starts ..."
    
    ${commands[$i]}
    
    if [ "$?" ==  "0" ]; then
        echo -e $desc" - ok \n"
    else
        echo -e $desc" - failed ! \n"
    fi
done
