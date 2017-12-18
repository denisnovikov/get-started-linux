#!/usr/bin/env bash

sleep 1
cd ~/

sleep 1
echo "\n\e[3m==> First-Time Git Setup\e[0m"

sleep 1
read -p "Your name: "  GIT_USERNAME
read -p "Your email: "  GIT_USEREMAIL
read -p "Your default editor: "  GIT_USEREDITOR
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_USEREMAIL"
git config --global core.editor "$GIT_USEREDITOR"
git config --global core.autocrlf input
git config --global core.safecrlf true

sleep 1
echo "\n\e[3m==> completed\e[0m"
exit 1
