#!/bin/bash
set -e

if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install mise
echo 'eval "$(mise activate bash)"' >>~/.bashrc
source ~/.bashrc
~/.dotfiles/install-standalone mise

brew install --cask \
  visual-studio-code google-chrome docker-desktop \
  spotify zoom raycast wezterm \
  alt-tab scroll-reverser blender godot

brew install neovim tree-sitter-cli

brew install starship
brew install fastfetch
brew install fzf
brew install jq
brew install yq
brew install wget
brew install curl
brew install diff-so-fancy
brew install tlrc
brew install cmatrix
brew install shellcheck
brew install lazydock

# brew install tmux
