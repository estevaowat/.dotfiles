echo "STARTING CONFIGURING ARCH MACHINE"

echo "Updating Arch repositories"
sudo pacman -Sy

echo "Installing git"
sudo pacman -S git

echo "Installing THE ALL MIGHT ***NEOVIM***"
sudo pacman -S neovim
 
echo "Installing drivers to Logitech mouse works"
sudo pacman -S solaar

echo "ALL READY TO CODE!!!"
