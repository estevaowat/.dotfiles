echo "Installing plug-vim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Creating symbolic link to init.vim"
mkdir ~/.config/nvim
ln -s $HOME/.dotfiles/nvim/.config/nvim/init.vim $HOME/.config/nvim/init.vim
