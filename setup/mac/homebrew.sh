echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing applications using Brewfile"
brew bundle --file ~/.dotfiles/Brewfile