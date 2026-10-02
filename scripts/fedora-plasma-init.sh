#!/bin/bash
set -e

#######################################
# Basic tooling
#######################################

# rpmfusion (steam, intel-media-driver, full ffmpeg)
sudo dnf install -y \
    "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
    "https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

sudo dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data

# dnf copr / config-manager, flatpak and appImage support
sudo dnf install -y dnf5-plugins flatpak fuse-libs

#######################################
# Update
#######################################

sudo dnf upgrade -y --refresh

#######################################
# nvidia: secure boot signing key
#######################################

# akmods signs the nvidia module with this key, it has to be enrolled before the driver is built
if lspci | grep -iE 'vga|3d' | grep -qi nvidia; then
    sudo dnf install -y kmodtool akmods mokutil openssl
    if mokutil --sb-state | grep -qi enabled; then
        sudo kmodgenca -a
        if ! mokutil --test-key /etc/pki/akmods/certs/public_key.der | grep -q "already enrolled"; then
            echo "Pick a one-time password, you will type it again on the blue MOK screen after reboot"
            sudo mokutil --import /etc/pki/akmods/certs/public_key.der
            echo "On reboot: Enroll MOK -> Continue -> Yes -> password -> Reboot"
        fi
    fi
fi

echo "Done. Reboot, then run scripts/fedora-plasma-post-reboot.sh 🔁"
