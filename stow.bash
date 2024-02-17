#!/bin/bash

### stow necessary folders
DOTFILES=$HOME/.dotfiles
cd "$DOTFILES"

for folder in git nvim tmux zsh p10k vscode
do
    echo "stow ${folder}"
    stow -R "${folder}"
done
