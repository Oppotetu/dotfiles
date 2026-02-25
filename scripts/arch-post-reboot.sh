#!/bin/bash

#######################################
# Cleanup
#######################################

sudo pacman -Rns \
  greetd-regreet greetd gtklock \
  gtklock-userinfo-module gtklock-powerbar-module \
  azote foot nwg-drawer \
  networkmanager network-manager-applet\
  networkmanager-openconnect \
  networkmanager-openvpn \
  networkmanager-vpn-plugin-openconnect \
  networkmanager-vpn-plugin-openvpn

sudo rm -iv "$HOME"/.config/reflector-simple-free-params.txt
sudo rm -iv "$HOME"/.config/welcome_news_latest_date_file
sudo rm -iv "$HOME"/.azotebg
sudo rm -riv "$HOME"/.config/foot
sudo rm -riv "$HOME"/.config/nwg-drawer