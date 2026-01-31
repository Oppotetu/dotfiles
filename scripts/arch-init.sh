#!/bin/bash
set -e

mkdir Work
mkdir .dotfiles

yay -S --noconfirm --needed google-chrome

yay -S --needed visual-studio-code-bin

sudo pacman -S --needed mise

sudo pacman -S --needed tmux

sudo pacman -S --needed neovim

#######################################
# browser
#######################################

# Google Chrome
yay -S --needed --noconfirm google-chrome

#######################################
# mise
#######################################

sudo pacman -S --needed --noconfirm mise

# echo 'eval "$(mise activate bash)"' >>~/.bashrc
# source ~/.bashrc

~/.dotfiles/install-standalone mise

#######################################
# Visual Studio Code
#######################################

yay -S --needed --noconfirm visual-studio-code-bin

#######################################
# ghostty
#######################################

sudo pacman -S --needed --noconfirm ghostty

#######################################
# tmux
#######################################

sudo pacman -S --needed --noconfirm tmux

#######################################
# neovim
#######################################

sudo pacman -S --needed --noconfirm neovim

#######################################
# impala
#######################################

sudo pacman -S --needed --noconfirm impala

#######################################
# iwd
#######################################

# sudo pacman -S --needed --noconfirm iwd
# sudo systemctl enable iwd
# sudo systemctl start iwd

#######################################
# spotify
#######################################

sudo pacman -S --needed --noconfirm spotify-launcher

#######################################
# sway + GPU bits
#######################################

if lspci | grep VGA | grep -qi intel; then
    echo "Intel GPU detected"
    sudo pacman -S --needed --noconfirm \
        intel-ucode \
        vulkan-intel \
        intel-media-driver \
        intel-gpu-tools
else
    echo "Not Intel"
fi

sudo pacman -S --needed --noconfirm \
    sway swaylock swayidle swaybg \
    waybar wofi grim slurp wl-clipboard \
    xdg-desktop-portal-wlr \
    ttf-font-awesome

#######################################
# cleanup
#######################################

sudo pacman -Rns --noconfirm $(pacman -Qtdq) || true
sudo pacman -Sc --noconfirm

echo "Setup complete 🚀"
