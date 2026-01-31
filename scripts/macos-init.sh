#!/bin/bash
set -e

if ! command -v brew &>/dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install mise
echo 'eval "$(mise activate bash)"' >>~/.bashrc
source ~/.bashrc
~/.dotfiles/install-standalone mise

brew install --cask visual-studio-code

brew install tmux

brew install neovim
