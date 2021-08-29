echo ----------- Setting zsh as default Prompt ------------
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
echo echo ----------- Installing oh-my-zsh ------------
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install z-plugin manager
echo echo ----------- Installing z-plugin manager ------------
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

# Install spaceship-prompt into zsh
echo echo ----------- spaceship-prompt ------------
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
