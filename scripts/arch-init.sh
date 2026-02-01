#!/bin/bash
set -e

mkdir -p ~/Work
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Photos

#######################################
# yay
#######################################

yay -S --needed --noconfirm \
    google-chrome visual-studio-code-bin \
    joycond-git

# ostt

#######################################
# pacman
#######################################

sudo pacman -S --needed --noconfirm \
    mise tmux neovim github-cli fzf jq yq \
    starship fastfetch wget curl tldr \
    diff-so-fancy cmatrix spellcheck \
    impala bluetui swayosd keyd \
    steam spotify-launcher \
    otf-font-awesome

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

#######################################
# Enable services
#######################################


sudo systemctl enable keyd
sudo systemctl start keyd

echo "Setup complete 🚀"
