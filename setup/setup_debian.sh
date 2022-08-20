#!/usr/bin/env sh

### Installing fonts
mkdir -p ~/.local/share/fonts
cp ~/.dotfiles/fonts/*.ttf ~/.local/share/fonts -y
fc-cache -f -v
echo fc-list | grep "JetBrains"

### Starting machine setup
set -- "$HOME/.dotfiles/setup/stow.sh" \
   "$HOME/.dotfiles/install/applications.sh" \
   "$HOME/.dotfiles/oh-my-zsh/oh-my-zsh.sh" \
   "$HOME/.dotfiles/oh-my-zsh/plugins.sh" \
   "$HOME/.dotfiles/vscode/extensions.sh"

# shellcheck source=/dev/null
for path in "$@"; do
   . "$path"
done
