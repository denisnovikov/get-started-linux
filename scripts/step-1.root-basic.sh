#!/usr/bin/env bash

sleep 1
echo "\nAdd your user account to the sudo group, to do this, in file '/etc/sudoers' list:
\e[1mroot\t\tALL=(ALL:ALL) ALL\e[0m
\e[1m%USERNAME%\tALL=(ALL:ALL) ALL\e[0m"
sleep 5
nano /etc/sudoers

sleep 1
echo "Before installing packages, you need to fix the file '/etc/apt/sources.list'. Add each repository,
the following entry:
\e[1mstretch main non-free contrib\e[0m"
sleep 5
nano /etc/apt/sources.list

sleep 1
echo "\n\e[3m==> update your repositories:\e[0m"
apt update

sleep 1
echo "\n\e[3m==> install packages:\e[0m"
apt install apt-transport-https aptitude build-essential curl ffmpeg filezilla gcc git git-extras git-flow htop jpegoptim lshw make mc optipng p7zip-full p7zip-rar python-dev python-pip python-software-properties rsync scrot software-properties-common sshfs terminator unrar-free wajig whois xserver-xorg-video-intel yarn zsh

sleep 1
exit 1
