echo ----------- STARTING SETUP -------------

echo ----------- Installing fonts -------------
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

echo ----------- install homebrew ------------
source ~/.dotfiles/setup/homebrew.sh

# Create symbolic links to dotfiles
source ~/.dotfiles/install.sh

echo ----------- setup oh-my-zsh ------------
source ~/.dotfiles/setup/oh-my-zsh.sh

echo ----------- setup Visual Studio Configuration ------------
source ~/.dotfiles/setup/vs-code.sh