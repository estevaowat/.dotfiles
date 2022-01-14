echo "STARTING SETUP"

echo "Installing fonts"
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

echo "Executing setup/homebrew.sh"
source ~/.dotfiles/setup/mac/homebrew.sh

echo "Creating symbolic links"
source ~/.dotfiles/install.sh

echo "****** Machine READY TO USE ******"
