#!/bin/sh

# install i3 window manager
# https://i3wm.org/docs/repositories.html
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get install i3

# screen saver and lock
sudo apt-get install xautolock

# font-awesome for i3status
sudo apt-get install fonts-font-awesome

# feh for backgrounds
sudo apt-get install feh

# fix for nautilus trying to show a desktop window whenever it opens
sudo gsettings set org.gnome.desktop.background show-desktop-icons false
