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

# vsc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf check-update &&
sudo dnf install -y code # or code-insiders

# ghostty
sudo dnf copr enable -y scottames/ghostty &&
sudo dnf install -y ghostty

kwriteconfig5 --file kdeglobals --group General --key TerminalApplication ghostty
kwriteconfig5 --file kdeglobals --group General --key TerminalService ghostty.desktop

sudo dnf remove konsole
# evt hvis remove konsole brekker 
# sudo sed -i 's/^NoDisplay=false/NoDisplay=true/' /usr/share/applications/org.kde.konsole.desktop




# spotify
sudo dnf install -y flatpak &&
flatpak install -y flathub com.spotify.Client



# plasma-panel-colorizer
sudo dnf copr enable -y peridot-augustus/plasma-panel-colorizer
sudo dnf install -y plasma-panel-colorizer

# konsave
sudo dnf install -y python3 pipx
pipx install konsave

# cleanup
sudo dnf autoremove


