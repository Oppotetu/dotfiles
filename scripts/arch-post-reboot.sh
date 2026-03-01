#!/bin/bash

#######################################
# Cleanup
#######################################

packages=(
  greetd greetd-regreet gtklock gtklock-userinfo-module gtklock-powerbar-module 
  azote foot nwg-drawer
)

installed=()

for pkg in "${packages[@]}"; do
  if pacman -Q "$pkg" > /dev/null 2>&1; then
    installed+=("$pkg")
  fi
done

if (( ${#installed[@]} > 0 )); then
  sudo pacman -Rns --noconfirm "${installed[@]}"
fi

sudo rm -if "$HOME"/.config/reflector-simple-free-params.txt
sudo rm -if "$HOME"/.config/welcome_news_latest_date_file
sudo rm -if "$HOME"/.azotebg
sudo rm -rif "$HOME"/.config/foot
sudo rm -rif "$HOME"/.config/nwg-drawer