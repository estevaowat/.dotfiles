#!/usr/bin/env sh
# -*- coding: utf-8 -*-

echo "Updating and upgrading Ubuntu"
sudo apt update
sudo apt upgrade

echo "Installing curl..."
sudo apt install curl

echo "Installing git..."
sudo apt install git

echo "Installing stow..."
sudo apt install stow

stow vscode -v

echo "Installing zsh"
sudo apt install zsh
rm -f "$HOME"/.zshrc

echo "Installing fonts"
mkdir -p ~/.local/share/fonts
cp ~/.dotfiles/fonts/*.ttf ~/.local/share/fonts
fc-cache -f -v
echo fc-list | grep "JetBrains"

echo ""
echo ""
echo ""

echo "Installing VsCode ..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

rm -f "$HOME"/.config/Code/User/settings.json "$HOME"/.config/Code/User/keybindings.json
mkdir -p "$HOME"/.config/Code/User
ln -s "$HOME"/.dotfiles/vscode/settings.json "$HOME"/.config/Code/User/settings.json
ln -s "$HOME"/.dotfiles/vscode/keybindings.json "$HOME"/.config/Code/User/keybindings.json

echo "Installing ALL MIGHT NEO VIM..."
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

echo "Installing SDKMAN..."
curl -s "https://get.sdkman.io" | bash
. "$HOME/.sdkman/bin/sdkman-init.sh"

echo "Installing java..."
sdk install java

echo "Installing gradle..."
sdk install gradle

echo "Installing Grovvy..."
sdk install groovy

echo "Installing Intellij..."
sudo snap install intellij-idea-community --classic
