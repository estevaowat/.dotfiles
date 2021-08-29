echo ----------- STARTING SETUP -------------

echo ----------- Installing fonts -------------
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

echo ----------- Installing files using HomeBrew ------------
source ~/.dotfiles/setup/homebrew.sh

echo ----------- Creating symbolic links -----------
source ~/.dotfiles/install.sh

echo ----------- Installing oh-my-zsh ------------
source ~/.dotfiles/setup/oh-my-zsh.sh

echo ----------- Configuring Visual Studio Code ------------
source ~/.dotfiles/setup/vs-code.sh