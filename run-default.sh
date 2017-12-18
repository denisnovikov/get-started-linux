#!/usr/bin/env bash

sleep 1
if [ "$(id -u)" != "0" ]; then
    sleep 1
    echo "\e[1mCreating a file structure for front-end development\e[0m"
    sh ./scripts/step-2.default-structure.sh
    
    sleep 1
    echo "\e[1mCloning main repository for work of front-end\e[0m"
    sh ./scripts/step-3.default-repositories.sh
else
    echo "\e[1mThis script must be run as normal user\e[0m"
    exit 1
fi

sleep 1
exit 1
