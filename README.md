mkdir $HOME/.dotfiles
cd $HOME/.dotfiles
git clone https://github.com/Oppotetu/dotfiles.git .

~/.dotfiles/scripts/arch-init.sh
~/.dotfiles/install-profile endeavour
reboot
~/.dotfiles/scripts/arch-post-reboot.sh
