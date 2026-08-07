#!/bin/bash
set -e

mkdir -p ~/Work
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Pictures

sudo pacman -Syu

#######################################
# yay
#######################################

yay -S --needed --noconfirm --disable-download-timeout \
    google-chrome visual-studio-code-bin cursor-bin \
    xremap-hypr-bin gazelle-tui insync \
    skwd-daemon-bin skwd-wall

# removed: linktui, lazydocker, joycond-git, zoom, wallust-git, cbonsai-git, terminal-rain-lightning, hyprdynamicmonitors-bin

# walker elephant elephant-desktopapplications

#######################################
# pacman
#######################################

sudo pacman -S --needed --noconfirm --disable-download-timeout \
    hyprland hyprlock hypridle hyprpaper hyprpolkitagent hyprsunset \
    swaync fuzzel waybar chromium zed wezterm \
    mise neovim tree-sitter-cli github-cli git-lfs git-filter-repo fzf jq yq \
    starship fastfetch wget curl tldr \
    diff-so-fancy cmatrix polkit-gnome \
    bluetui swayosd matugen libvips openslide quickshell \
    steam oculante btop brightnessctl \
    godot-mono scons openrct2 wl-clipboard \
    cliphist grim slurp swappy pamixer \
    thunar thunar-volman thunar-archive-plugin file-roller tumbler \
    sddm libreoffice-fresh featherpad obs-studio \
    gvfs gvfs-mtp gvfs-gphoto2 gvfs-afc gvfs-smb gvfs-nfs \
    wtype spotify-player pavucontrol \
    otf-font-awesome ttf-nerd-fonts-symbols-mono \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xorg-xwayland \
    blender dotnet-sdk gimp

# netcat kanshi

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

# sudo systemctl --user enable hyprdynamicmonitors-prepare.service
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl enable sddm.service
sudo systemctl start sddm.service
sudo systemctl --user enable --now skwd-daemon.service

# elephant service enable
# systemctl --user start elephant.service

#######################################
# Various
#######################################

# nvim: Ensure XDG_CONFIG_HOME preserved in sudo
if ! sudo test -f /etc/sudoers.d/env_keep_xdg; then
    echo 'Defaults env_keep += "XDG_CONFIG_HOME"' | sudo EDITOR='tee -a' visudo -f /etc/sudoers.d/env_keep_xdg
    sudo chmod 0440 /etc/sudoers.d/env_keep_xdg
fi

# # way-displays: Add yourself to the input group to monitor events
# sudo usermod -a -G input "${USER}"
# xremap: add user to input group
sudo gpasswd -a $USER input

# spotify_player authenticate
# gh auth login

echo "Setup complete 🚀"
