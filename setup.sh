#!/usr/bin/env sh

UNAME=$(uname -a)
DOTFILES="$HOME/.dotfiles"
OS=$(echo "$UNAME" | cut -d' ' -f1)

if [ "$OS" = "Linux" ]; then
   DISTRO=$(
      # shellcheck source=/dev/null
      . /etc/os-release
      # shellcheck disable=SC2153
      echo "$NAME"
   )

   echo "Executing $OS - $DISTRO INSTALATION"
   printf "\n"

   if [ "$DISTRO" = "Ubuntu" ]; then
      "$DOTFILES"/setup/debian/setup.sh

      echo "Installing vscode extensions..."
      printf "\n"
      . "$DOTFILES"/vscode/extensions.sh
   fi

   if [ "$DISTRO" = "Arch Linux" ]; then
      . "$DOTFILES"/setup/arch/setup.sh
   fi

   . "$DOTFILES"/general/node.sh

fi

if [ "$OS" = "Darwin" ]; then
   echo "Executing $OS"
   . "$DOTFILES"/setup/mac/setup.sh

   echo "Installing vscode extensions..."
   . "$DOTFILES"/vscode/extensions.sh
fi

# Installing general softwares that works in any setup
echo "Installing docker..."
. "$DOTFILES"/general/docker.sh

echo "Configuring neovim..."
. "$DOTFILES"/general/neovim.sh

echo "Installing oh-my-zsh"
. "$DOTFILES"/oh-my-zsh/oh-my-zsh.sh
