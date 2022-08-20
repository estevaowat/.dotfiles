#!/usr/bin/env sh

### Update and upgrade Ubuntu packages repositories
sudo apt update
sudo apt upgrade -y

### Installing essential tools
sudo apt install curl stow zsh tmux -y

echo ""
echo "Installing Neovim..."
echo ""
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

echo ""
echo "Installing docker..."
echo ""
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo ""
echo "Installing sdkman"
echo ""
curl -s "https://get.sdkman.io" | bash
. "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java
sdk install gradle
sdk install groovy

echo ""
echo "Installing VsCodium"
echo ""
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg |
   gpg --dearmor |
   sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' |
   sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update
sudo apt install codium -y

echo ""
echo "Installing IntelliJ"
echo ""
sudo snap install intellij-idea-community --classic
