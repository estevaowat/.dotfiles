#!/usr/bin/env sh
# -*- coding: utf-8 -*-

### Update and upgrade Ubuntu packages repositories
sudo apt update
sudo apt upgrade -y

### Installing essential tools
sudo apt install curl stow zsh -y

### Installing fonts
mkdir -p ~/.local/share/fonts
cp ~/.dotfiles/fonts/*.ttf ~/.local/share/fonts -y
fc-cache -f -v
echo fc-list | grep "JetBrains"

### Install VSCodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg |
   gpg --dearmor |
   sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' |
   sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update && sudo apt install codium

### Install NEOVim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

### Install sdkman and his candidates

curl -s "https://get.sdkman.io" | bash
. "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java
sdk install gradle
sdk install groovy

### Install Intellij
sudo snap install intellij-idea-community --classic

. ~/.dotfiles/oh-my-zsh/oh-my-zsh.sh
. ~/.dotfiles/oh-my-zsh/plugins.sh

### Stow folders 
. ~/.dotfiles/install/stow.sh

### Configure neovim
. ~/.dotfiles/general/neovim.sh
