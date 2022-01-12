echo "STARTING SETUP" 

echo "Installing fonts"
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

echo "Executing setup/homebrew.sh"
source ~/.dotfiles/setup/mac/homebrew.sh

echo "Creating symbolic links"
source ~/.dotfiles/install.sh

echo "Installing oh-my-zsh"
source ~/.dotfiles/setup/mac/oh-my-zsh.sh

echo "Configuring Visual Studio Code"
source ~/.dotfiles/setup/mac/vs-code.sh
 
echo  "****** Machine READY TO USE ******"