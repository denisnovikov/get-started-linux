#!/usr/bin/env bash

sleep 1
if [ "$(id -u)" != "0" ]; then
    echo "\e[1mThis script must be run as root\e[0m"
    exit 1
else
    sleep 1
    echo "\e[1mInstall basic packages\e[0m"
    sh ./scripts/basic.sh
fi

sleep 1
exit 1
