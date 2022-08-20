#!/bin/sh

### Install applications and tools using brewfile
which -s brew

### Copy fonts from dotfiles to fonts folder
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

### Install homebrew
if [[ $? != 0 ]]; then
   # Install Homebrew
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file ~/.dotfiles/install/Brewfile
brew update

set -- "$HOME/.dotfiles/install/applications.sh" \
   "$HOME/.dotfiles/oh-my-zsh/oh-my-zsh.sh" \
   "$HOME/.dotfiles/oh-my-zsh/plugins.sh" \
   "$HOME/.dotfiles/vscode/extensions.sh" \
   "$HOME/.dotfiles/setup/stow.sh"

for path in "$@"; do
   . "$path"
done
