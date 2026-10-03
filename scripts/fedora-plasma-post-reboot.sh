#!/bin/bash
set -e

mkdir -p ~/Work
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Pictures

# temp directory
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

#######################################
# Firmware updates
#######################################

# Refresh the firmware database
sudo fwupdmgr refresh --force
# See what can be updated
sudo fwupdmgr get-devices
# Check for updates
sudo fwupdmgr get-updates
# Apply them
sudo fwupdmgr update

#######################################
# Flathub
#######################################

# Remove the limited Fedora repo to prevent conflicts
flatpak remote-delete fedora
# only from Flatpaks verified developers
flatpak remote-add --if-not-exists --subset=verified flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install org.onlyoffice.desktopeditors

#######################################
# Repos
#######################################

# vscodium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h\n" |
    sudo tee /etc/yum.repos.d/vscodium.repo >/dev/null

# brave
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

# mise
sudo dnf config-manager addrepo --overwrite --from-repofile=https://mise.jdx.dev/rpm/mise.repo

# vicinae
curl -fsSL https://vicinae.com/install | bash

# starship
curl -sS https://starship.rs/install.sh | sh

# copr
sudo dnf copr enable -y piixini/skwd-wall-v2
sudo dnf copr enable -y fuddlesworth/PlasmaZones

#######################################
# dnf
#######################################

sudo dnf install -y \
    codium chromium brave-browser kitty plasmazones \
    skwd-wall-v2 skwd-lens skwd-paper-plasma \
    mise neovim tree-sitter-cli gcc gh git-lfs git-filter-repo fzf jq yq \
    fastfetch curl tldr diff-so-fancy 7zip \
    steam lutris mangohud btop wl-clipboard \
    blender gimp audacity vlc dotnet-sdk-10.0

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
# Services
#######################################

# plasmazones
systemctl --user enable --now plasmazones.service
kbuildsycoca6 --noincremental # KDE only — refresh the service cache
# skwd
systemctl --user daemon-reload
systemctl --user enable --now skwd-walld.service
# vicinae
systemctl --user enable --now vicinae.service
# disabling NetworkManager-wait-online.service can decrease boot time by at least ~15s-20s
sudo systemctl disable NetworkManager-wait-online.service

#######################################
# Media
#######################################

# Switch to full FFMPEG
sudo dnf swap -y 'ffmpeg-free' 'ffmpeg' --allowerasing
# Update multimedia/GStreamer components while excluding currently broken broken packages
sudo dnf update -y @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin --exclude=libheif-freeworld --exclude=obs-studio-freeworld
# Installs useful Sound and Video complementary packages
sudo dnf group install -y sound-and-video
# Helps decrease load on the CPU when watching videos online by alloting the rendering to the dGPU/iGPU. Quite helpful in increasing battery backup on laptops
sudo dnf install -y ffmpeg-libs libva libva-utils
sudo dnf install -y libva-nvidia-driver

#######################################
# Various
#######################################

# xremap: add user to input group and give it access to uinput
sudo gpasswd -a "$USER" input
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

#######################################
# GPU bits
#######################################

if lspci | grep -iE 'vga|3d' | grep -qi nvidia; then
    echo "NVIDIA GPU detected"

    # unsigned akmods module won't load with secure boot on (black screen / 800x600)
    if mokutil --sb-state | grep -qi enabled; then
        echo "Secure Boot is enabled, disable it in BIOS/UEFI and rerun"
        exit 1
    fi

    # open kernel module (recommended for RTX 2000+, required for RTX 5000), must be set before install
    echo "%_with_kmod_nvidia_open 1" | sudo tee /etc/rpm/macros.nvidia-kmod >/dev/null
    sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

    # the kernel module builds in the background after install, wait for it (max 20 min)
    echo "Waiting for nvidia kernel module to build..."
    for _ in $(seq 120); do
        modinfo -F version nvidia >/dev/null 2>&1 && break
        sleep 10
    done
    modinfo -F version nvidia || {
        echo "nvidia module not built, check: sudo akmods --force"
        exit 1
    }
fi

#######################################
# Do manually
#######################################

echo "Setup complete 🚀 Do manually:"
echo "  - Download Godot mono: https://godotengine.org/download/linux/"
echo "  - gh auth login"
echo "  - reboot (for input group, uinput and nvidia to take effect)"
echo "  - run nvidia-smi after reboot to verify driver is working"
