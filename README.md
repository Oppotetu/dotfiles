mkdir $HOME/.dotfiles
cd $HOME/.dotfiles
git clone https://github.com/Oppotetu/dotfiles.git .

~/.dotfiles/scripts/arch-init.sh
reboot
~/.dotfiles/install-profile endeavour
~/.dotfiles/install-standalone keyd-sudo
~/.dotfiles/install-standalone network-sudo
~/.dotfiles/scripts/arch-post-reboot.sh

if trying sway nvidia:
/usr/share/wayland-sessions/sway.desktop:
add Exec=sway --unsupported-gpu
