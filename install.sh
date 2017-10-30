#!/bin/bash
CONFIG_PATH="/home/ivan/.config/mishka-config"
rm ~/.config/i3/config ~/.gitconfig ~/.bashrc ~/.bash_aliases ~/.i3status.conf
ln -s ${CONFIG_PATH}/i3.conf ~/.config/i3/config
ln -s ${CONFIG_PATH}/.gitconfig ~/.gitconfig
ln -s ${CONFIG_PATH}/bashrc.sh ~/.bashrc
ln -s ${CONFIG_PATH}/bash_aliases.sh ~/.bash_aliases
case $1 in
    -l|--laptop)
    ln -s ${CONFIG_PATH}/i3status.conf ~/.i3status.conf
    ;;
    -d|--desktop)
    ln -s ${CONFIG_PATH}/i3status-desktop.conf ~/.i3status.conf
    ;;
esac
