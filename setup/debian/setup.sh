echo "Updating and upgrading Ubuntu"
sudo apt update
sudo apt upgrade

echo "Installing curl..."
sudo apt install curl

echo "Installing git..."
sudo apt install git

echo "Installing vscode"
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add –
sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main”
sudo apt install code

echo "Installing vscode extensions"
source ~/.dotfiles/setup/vscode.sh

echo "Installing ALL MIGHT NEO VIM..."
sudo apt install neovim

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash



echo "Installing SDKMAN..."
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "Installing java..."
sdk install java

echo "Installing gradle..."
sdk install gradle

echo "Installing Grovvy..."
sdk install groovy

echo "Installing Intellij..."
sudo apt-get install intellij-idea-community
