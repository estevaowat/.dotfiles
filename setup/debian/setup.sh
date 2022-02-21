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
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg |
   gpg --dearmor |
   sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' |
   sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update && sudo apt install codium

rm -f "$HOME"/.config/Code/User/settings.json "$HOME"/.config/Code/User/keybindings.json
mkdir -p "$HOME"/.config/Code/User
ln -s "$HOME"/.dotfiles/vscode/settings.json "$HOME"/.config/Code/User/settings.json
ln -s "$HOME"/.dotfiles/vscode/keybindings.json "$HOME"/.config/Code/User/keybindings.json

echo ""
echo "Installing ALL MIGHT NEO VIM..."
echo ""
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

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
