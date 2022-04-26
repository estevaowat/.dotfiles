#!/usr/bin/env sh
# -*- coding: utf-8 -*-

echo "STARTING CONFIGURING ARCH MACHINE"

echo "Updating Arch repositories"
sudo pacman -Sy

echo "Installing curl"
sudo pacman -S curl

echo "Installing zsh"
sudo pacman -S zsh

echo "Installing stow"
sudo pacman -S stow

echo "Installing tmux"
sudo pacman -S tmux

echo "Installing THE ALL MIGHT ***NEOVIM***"
sudo pacman -S neovim

echo "Installing drivers to Logitech mouse works"
sudo pacman -S solaar

echo "ALL READY TO CODE!!!"
