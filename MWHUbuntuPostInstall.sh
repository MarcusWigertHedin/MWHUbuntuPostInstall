#!/bin/bash

# Ubuntu 22.04 (jammy, LTS) post install script
# Author: Marcus Wigert Hedin
# 2023-02-19

# apt-packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git curl dbus font-manager

# snap packages
sudo snap refresh
sudo snap install discord firefox inkscape sublime-text gimp keepassxc

# sublime text 3 package control
sudo wget -P "/.config/sublime-text/Installed Packages" "https://packagecontrol.io/Package%20Control.sublime-package"

# GNOME
# Get GSE-installer
wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod +x gnome-shell-extension-installer
mv gnome-shell-extension-installer /usr/bin/

# Extensions
gnome-shell-extension-installer --yes 120 #system-monitor

# Get wallpaper from URL and set it
#wget  -o /usr/share/background
#gsettings set org.gnome.desktop.background picture-uri file:////usr/share/background