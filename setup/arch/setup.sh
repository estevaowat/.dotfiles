#!/usr/bin/env sh
# -*- coding: utf-8 -*-

echo "STARTING CONFIGURING ARCH MACHINE"

echo "Updating Arch repositories"
sudo pacman -Sy

echo "Installing git"
sudo pacman -S git

echo "Installing curl"
sudo pacman -S curl

echo "Installing curl"
sudo pacman -S stow

echo "Installing THE ALL MIGHT ***NEOVIM***"
sudo pacman -S neovim

echo "Installing drivers to Logitech mouse works"
sudo pacman -S solaar

echo "ALL READY TO CODE!!!"
