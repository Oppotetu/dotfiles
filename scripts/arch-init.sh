#!/bin/bash
set -e

mkdir -p ~/Work
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Photos

sudo pacman -Syu

#todo: insync

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
    sway mako fuzzel waybar \
    mise neovim github-cli fzf jq yq \
    starship fastfetch wget curl tldr \
    diff-so-fancy cmatrix \
    impala bluetui swayosd keyd \
    steam oculante btop \
    godot scons openrct2 \
    sddm libreoffice-fresh \
    wtype wezterm spotify-player \
    otf-font-awesome ttf-nerd-fonts-symbols-mono \

    # autotiling brightnessctl cliphist grim slurp swaybg swayidle thunar 

    #? egl-wayland file-roller gvfs pamixer polkit-gnome swappy wayland-protocols wl-clipboard
    # xdg-desktop-portal-wlr xed xorg-wayland

#  gcc

    # linux-headers nvidia-open-dkms nvidia-utils \
    # nvidia-settings egl-wayland libva-nvidia-driver \
    # nvidia-prime vulkan-tools 

    
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
# Unblock and enable services
#######################################

sudo rfkill unblock bluetooth

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl enable keyd.service
sudo systemctl start keyd.service
# sudo systemctl disable greetd.service
sudo systemctl enable sddm.service
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-resume.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-powerd.service
sudo systemctl enable iwd.service
sudo systemctl enable systemd-networkd.service
sudo systemctl enable systemd-resolved.service

# sudo systemctl disable NetworkManager.service
# sudo systemctl disable NetworkManager-wait-online.service

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

# spotify_player authenticate
# gh auth login


echo "Setup complete 🚀"
