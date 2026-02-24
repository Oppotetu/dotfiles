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
    zoom joycond-git way-displays \
    lazydocker swaylock-effects-git \
    wallust-git
    
#######################################
# pacman
#######################################

sudo pacman -S --needed --noconfirm \
    mise tmux neovim github-cli fzf jq yq \
    starship fastfetch wget curl tldr \
    diff-so-fancy cmatrix spellcheck \
    impala bluetui swayosd keyd \
    steam oculante btop\
    sddm libreoffice-fresh \
    wtype wezterm spotify_player \
    otf-font-awesome ttf-nerd-fonts-symbols-mono
    
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
sudo systemctl disable greetd
sudo systemctl enable sddm

#######################################
# Various
#######################################

# nvim: Ensure XDG_CONFIG_HOME preserved in sudo
if ! sudo test -f /etc/sudoers.d/env_keep_xdg; then
    echo 'Defaults env_keep += "XDG_CONFIG_HOME"' | sudo EDITOR='tee -a' visudo -f /etc/sudoers.d/env_keep_xdg
    sudo chmod 0440 /etc/sudoers.d/env_keep_xdg
fi

# way-displays: Add yourself to the input group to monitor events
sudo usermod -a -G input "${USER}"
# keyd: user should be in the keyd group
sudo usermod -aG keyd "$USER"

spotify_player authenticate


echo "Setup complete 🚀"
