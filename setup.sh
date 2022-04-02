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

   if [ "$DISTRO" = "Ubuntu" ]; then
      . "$DOTFILES"/setup/debian/setup.sh

      echo "Installing vscode extensions..."
      . "$DOTFILES"/vscode/extensions.sh

      echo "Installing docker..."
      . "$DOTFILES"/general/docker.sh
   fi

   if [ "$DISTRO" = "Arch Linux" ]; then
      . "$DOTFILES"/setup/arch/setup.sh
   fi

   . "$DOTFILES"/general/node.sh

fi

echo "SETUP FINISHED!!!"
