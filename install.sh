#!/bin/bash
rm ~/.config/i3/config
ln -s ~/.config/mishka-config/i3.conf ~/.config/i3/config
rm ~/.gitconfig
ln -s ~/.config/mishka-config/.gitconfig ~/.gitconfig
rm ~/.i3status.conf
case $1 in
    -l|--laptop)
    ln -s ~/.config/mishka-config/i3status.conf ~/.i3status.conf
    ;;
    -d|--desktop)
    ln -s ~/.config/mishka-config/i3status-desktop.conf ~/.i3status.conf
    ;;
esac
