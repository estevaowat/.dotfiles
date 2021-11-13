echo "STARTING CONFIGURING ARCH MACHINE"

echo "Updating Arch repositories"
sudo pacman -Sy

echo "Installing git"
sudo pacman -S git

echo "Installing THE ALL MIGHT ***NEOVIM*** "
sudo pacman -S neovim

echo "Installing plug-vim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -s $HOME/.dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim

echo "Installing drivers to Logitech mouse works"
sudo pacman -S solaar

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

echo "Installing node lts version"
nvm install --lts
nvm use --lts

echo "Installing yarn management packages"
sudo pacman -S yarn

echo "ALL FINISH TO CODE"
