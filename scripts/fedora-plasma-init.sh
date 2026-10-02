#!/bin/bash
set -e

#######################################
# rpmfusion (steam, intel-media-driver, full ffmpeg)
#######################################

sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data

#######################################
# Update
#######################################

sudo dnf upgrade -y --refresh

echo "Done. Reboot, then run scripts/fedora-plasma-post-reboot.sh 🔁"
