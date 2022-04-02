### Install applications and tools using brewfile
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file ~/.dotfiles/Brewfile
brew update

### Copy fonts from dotfiles to fonts folder
cp ~/.dotfiles/fonts/*.ttf /Library/Fonts/

### Configure symbolic links

