#!/usr/bin/env sh
# -*- coding: utf-8 -*-

echo "STARTING SETUP"

echo "Installing fonts"
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

echo "Executing setup/homebrew.sh"
. "$HOME"/.dotfiles/setup/mac/homebrew.sh

echo "Creating symbolic links"
. "$HOME"/.dotfiles/install.sh
