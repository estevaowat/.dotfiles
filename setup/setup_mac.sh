#!/bin/sh

### Install applications and tools using brewfile
which -s brew

### Copy fonts from dotfiles to fonts folder
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

if [[ $? != 0 ]]; then
   # Install Homebrew
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file ~/.dotfiles/install/Brewfile
brew update

### Install oh-my-zsh
source ~/.dotfiles/oh-my-zsh/oh-my-zsh.sh

### Install plugins and themes for oh-my-zsh
source ~/.dotfiles/oh-my-zsh/plugins.sh

### Configure symbolic links
source ~/.dotfiles/install/stow.sh

### Install vscode extensions
source ~/.dotfiles/vscode/extensions.sh
