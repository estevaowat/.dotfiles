#! /usr/bin/env zsh
project_folder="$HOME/Desktop/projects"
alias projects="cd $project_folder"
alias code=codium
alias vi=nvim
alias lzd='lazydocker'
alias ls='ls -lhA --color=auto'
alias nvim_config="cd $HOME/.dotfiles/nvim/.config/nvim/"
alias dotfiles="cd $HOME/.dotfiles"
alias obsidian="cd $HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/second_brain && nvim ."
alias edit_zshrc="nvim $HOME/.zshrc"
alias reload="source $HOME/.zshrc"
export obsidian_folder="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/second_brain"

function aliases_help(){
echo "projects= cd $project_folder"
echo "vi=nvim"
echo "lzd=lazydocker"
echo "ls=ls -lhA --color=auto"
echo "nvim_config= cd $HOME/.dotfiles/nvim/.config/nvim"

}
