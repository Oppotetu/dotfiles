#!/bin/bash
set -e

mkdir -p ~/Work
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Pictures

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

# rpmfusion and system update are done in fedora-plasma-init.sh
sudo dnf install -y dnf5-plugins flatpak

#######################################
# Do manually
#######################################
# Download Godot mono: https://godotengine.org/download/linux/

#######################################
# Repos
#######################################

# vscodium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h\n" |
    sudo tee /etc/yum.repos.d/vscodium.repo >/dev/null

# insync
sudo rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
printf "[insync]\nname=insync repo\nbaseurl=http://yum.insync.io/fedora/\$releasever/\ngpgcheck=1\ngpgkey=https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key\nenabled=1\nmetadata_expire=120m\n" |
    sudo tee /etc/yum.repos.d/insync.repo >/dev/null

# mise
sudo dnf config-manager addrepo --overwrite --from-repofile=https://mise.jdx.dev/rpm/mise.repo

# vicinae
curl -fsSL https://vicinae.com/install | bash

# copr
sudo dnf copr enable -y atim/starship
sudo dnf copr enable -y quadratech188/vicinae
sudo dnf copr enable -y piixini/skwd-wall-v2
sudo dnf copr enable -y fuddlesworth/PlasmaZones

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#######################################
# dnf
#######################################

sudo dnf install -y \
    codium chromium insync \
    kitty starship plasmazones \
    vicinae skwd-wall-v2 skwd-lens skwd-paper-plasma \
    mise neovim tree-sitter-cli gcc gh git-lfs git-filter-repo fzf jq yq \
    fastfetch curl tldr \
    diff-so-fancy cmatrix \
    steam btop \
    wl-clipboard \
    libreoffice obs-studio \
    blender dotnet-sdk-10.0 gimp

#######################################
# Manual installs
#######################################

# xremap (kde build, uses a kwin script for application-specific remaps)
curl -fsSL -o "$tmp/xremap.zip" \
    https://github.com/xremap/xremap/releases/latest/download/xremap-linux-x86_64-kde.zip
unzip -o -q "$tmp/xremap.zip" -d "$tmp/xremap"
sudo install -m 755 "$tmp/xremap/xremap" /usr/local/bin/xremap

# nerd font symbols
if ! [ -d ~/.local/share/fonts/NerdFontsSymbolsOnly ]; then
    curl -fsSL -o "$tmp/nerd-symbols.zip" \
        https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip
    mkdir -p ~/.local/share/fonts/NerdFontsSymbolsOnly
    unzip -o -q "$tmp/nerd-symbols.zip" -d ~/.local/share/fonts/NerdFontsSymbolsOnly
    fc-cache -f
fi

#######################################
# GPU bits
#######################################

# if lspci | grep VGA | grep -qi intel; then
#     echo "Intel GPU detected"
#     sudo dnf install -y \
#         microcode_ctl \
#         mesa-vulkan-drivers \
#         intel-media-driver \
#         igt-gpu-tools
# else
#     echo "Not Intel"
# fi

# nvidia (rpmfusion):
# sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

#######################################
# Enable services
#######################################

# bluetooth and sddm are enabled by default on fedora kde
# skwd
systemctl --user daemon-reload
systemctl --user enable --now skwd-walld.service
# vicinae
systemctl --user enable --now vicinae.service

#######################################
# Various
#######################################

# nvim: Ensure XDG_CONFIG_HOME preserved in sudo
if ! sudo test -f /etc/sudoers.d/env_keep_xdg; then
    echo 'Defaults env_keep += "XDG_CONFIG_HOME"' | sudo EDITOR='tee -a' visudo -f /etc/sudoers.d/env_keep_xdg
    sudo chmod 0440 /etc/sudoers.d/env_keep_xdg
fi

# xremap: add user to input group and give it access to uinput
sudo gpasswd -a $USER input
echo uinput | sudo tee /etc/modules-load.d/uinput.conf >/dev/null
echo 'KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"' |
    sudo tee /etc/udev/rules.d/99-xremap-uinput.rules >/dev/null

# xremap: autostart in plasma
mkdir -p ~/.config/autostart
cat >~/.config/autostart/xremap.desktop <<'EOF'
[Desktop Entry]
Type=Application
Name=xremap
Exec=sh -c 'xremap --watch "$HOME/.config/xremap/config.yml"'
X-KDE-autostart-phase=1
EOF

# spotify_player authenticate
# gh auth login

echo "Setup complete 🚀 (reboot for input group and uinput to take effect)"
