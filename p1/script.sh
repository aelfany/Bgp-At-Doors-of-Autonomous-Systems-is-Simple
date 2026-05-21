#!/bin/bash
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y xorg dbus-x11 xfce4 xfce4-goodies lightdm
echo "/usr/sbin/lightdm" | sudo tee /etc/X11/default-display-manager
sudo DEBIAN_FRONTEND=noninteractive dpkg-reconfigure lightdm
sudo systemctl set-default graphical.target
sudo systemctl enable lightdm
