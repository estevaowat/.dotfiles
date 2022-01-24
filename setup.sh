#!/usr/bin/env sh

UNAME=$(uname -a)

OS=$(echo "$UNAME" | cut -d' ' -f1)

if [ "$OS" = "Linux" ]; then
   DISTRO=$(
      . /etc/os-release
      echo "$NAME"
   )

   echo "Executing $OS - $DISTRO INSTALATION"
   printf "\n"

   if [ "$DISTRO" = "Ubuntu" ]; then
      ./setup/debian/setup.sh

      echo "Installing vscode extensions..."
      printf "\n"
      echo "Installing vscode extensions..."
      printf "\n"
      ~/.dotfiles/setup/vscode/extensions.sh
   fi

   if [ "$DISTRO" = "Arch Linux" ]; then
      ./setup/debian/setup.sh
   fi

   ./general/node.sh

fi

if [ "$OS" = "Darwin" ]; then
   echo "Executing $OS"
   ./setup/mac/setup.sh

   echo "Installing vscode extensions..."
   ~/.dotfiles/setup/vscode/extensions.sh
fi

# Installing general softwares that works in any setup
echo "Installing docker..."
./general/docker.sh

echo "Configuring neovim..."
./general/neovim.sh

echo "Installing oh-my-zsh"
~/.dotfiles/oh-my-zsh/oh-my-zsh.sh
