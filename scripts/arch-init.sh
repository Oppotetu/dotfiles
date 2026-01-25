#!/bin/bash
set -e 

yay -S --noconfirm --needed google-chrome
mkdir Work
mkdir .dotfiles

yay -S --needed visual-studio-code-bin

sudo pacman -S --needed mise