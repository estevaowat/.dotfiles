#!/usr/bin/env sh

echo ""
echo "Installing oh-my-zsh plugins..."
echo ""
git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}"/plugins/zsh-completions

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
   ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo ""
echo "Install spaceship-prompt..."
echo ""
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo ""
echo "Creating symbolic link ..."
echo ""

rm -f ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source "${HOME}"/.dotfiles/.zshrc
