#!/bin/bash
set -e

# browser
sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager setopt google-chrome.enabled=1
dnf repolist | grep chrome
sudo dnf install -y google-chrome-stable

sudo dnf remove -y brave-browser
sudo rm /etc/yum.repos.d/brave-browser*.repo

# mise
sudo dnf copr enable -y jdxcode/mise &&
    sudo dnf install -y mise
echo 'eval "$(mise activate bash)"' >>~/.bashrc
source ~/.bashrc
~/.dotfiles/install-standalone mise

# vsc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
    echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo >/dev/null

sudo dnf check-update &&
    sudo dnf install -y code # or code-insiders

# ghostty
sudo dnf copr enable -y scottames/ghostty &&
    sudo dnf install -y ghostty

# kwriteconfig6 --file kdeglobals --group General --key TerminalApplication ghostty
# kwriteconfig6 --file kdeglobals --group General --key TerminalService ghostty.desktop

sudo dnf remove konsole
# evt hvis remove konsole brekker
# sudo sed -i 's/^NoDisplay=false/NoDisplay=true/' /usr/share/applications/org.kde.konsole.desktop

# tmux
sudo dnf install -y tmux

# neovim
sudo dnf install -y neovim

# impala
sudo dnf install -y rust cargo
cargo install impala

sudo dnf install -y iwd
sudo systemctl enable iwd
sudo systemctl start iwd

# spotify
sudo dnf install -y flatpak &&
    flatpak install -y flathub com.spotify.Client

# plasma-panel-colorizer
sudo dnf copr enable -y peridot-augustus/plasma-panel-colorizer
sudo dnf install -y plasma-panel-colorizer

# konsave
sudo dnf install -y python3 pipx
pipx install konsave

# go-task
sudo dnf install -y go-task

# sway
if lspci | grep VGA | grep -qi intel; then
    echo "Intel GPU detected"
    sudo dnf install -y \
        microcode_ctl \
        vulkan-loader \
        intel-media-driver \
        intel-gpu-tools
else
    echo "Not Intel"
fi
sudo dnf install fontawesome-fonts-all

sudo dnf install -y sway swaylock swayidle \
    waybar wofi grim slurp wl-clipboard \
    xdg-desktop-portal-wlr fontawesome-fonts-all

# swaybg

# krohnkite
git clone https://codeberg.org/anametologin/Krohnkite.git ~/.local/src/krohnkite
cd ~/.local/src/krohnkite
go-task install
kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled true

# kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled true

# remove kde
sudo dnf remove @kde-desktop @kde-apps @kde-media @kde-pim sddm*
rm -rf ~/.config/kde*
rm -rf ~/.local/share/kde*
rm kactivitymanagerd

# cleanup
sudo dnf autoremove
plasmashell --replace && systemctl --user restart plasma-plasmashell

# upgrade
# remove the old version
# rm -rf ~/.local/share/kwin/scripts/krohnkite/
# install the new version
# kpackagetool6 --type KWin/Script --install ~/Downloads/krohnkite
