#!/bin/sh
sudo apt update -y
# zsh
sudo apt install zsh -y
chsh -s /usr/bin/zsh
exec $SHELL -l

