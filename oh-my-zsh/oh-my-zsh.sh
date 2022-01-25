#!/usr/bin/env sh
echo ""
echo "Setting zsh as default Prompt..."
echo ""
chsh -s "$(which zsh)"

echo ""
echo "Installing oh-my-zsh..."
echo ""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
