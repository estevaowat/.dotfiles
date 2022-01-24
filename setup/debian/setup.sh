#!/usr/bin/env sh
# -*- coding: utf-8 -*-
echo ""
echo "Updating and upgrading Ubuntu"
echo ""
sudo apt update
sudo apt upgrade -y

echo ""
echo "Installing curl..."
echo ""
sudo apt install curl -y

echo ""
echo "Installing stow..."
echo ""
sudo apt install stow -y
stow vscode -v

echo ""
echo "Installing zsh"
echo ""
sudo apt install zsh -y
rm -f "$HOME"/.zshrc

echo ""
echo "Installing fonts"
echo ""
mkdir -p ~/.local/share/fonts
cp ~/.dotfiles/fonts/*.ttf ~/.local/share/fonts -y
fc-cache -f -v
echo fc-list | grep "JetBrains"

echo ""
echo "Installing VsCode ..."
echo ""
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y # or code-insiders

rm -f "$HOME"/.config/Code/User/settings.json "$HOME"/.config/Code/User/keybindings.json
mkdir -p "$HOME"/.config/Code/User
ln -s "$HOME"/.dotfiles/vscode/settings.json "$HOME"/.config/Code/User/settings.json
ln -s "$HOME"/.dotfiles/vscode/keybindings.json "$HOME"/.config/Code/User/keybindings.json

echo ""
echo "Installing ALL MIGHT NEO VIM..."
echo ""
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

echo ""
echo "Installing SDKMAN..."
echo ""
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
echo ""
echo ""
echo ""
