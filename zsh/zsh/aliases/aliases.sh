#! /usr/bin/env zsh

project_folder="$HOME/Desktop/projects"
alias projects="cd $project_folder"

alias vi=nvim
alias code=zed
alias lzd='lazydocker'
alias ls='ls --color=auto'
alias nvim_config="cd $HOME/.dotfiles/nvim/.config/nvim/"
alias dotfiles="cd $HOME/.dotfiles"
alias obsidian="cd $HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/second_brain && nvim ."
alias edit_zshrc="nvim $HOME/.zshrc"
alias reload="source $HOME/.zshrc"
alias new_session=". $HOME/.dotfiles/scripts/tmux/create_session.sh"
alias update-all-languages=". $HOME/.dotfiles/scripts/update_languages.bash"
alias fzf="fzf --style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
alias proj='cd "$(fd . $HOME/Desktop/projects -t d -d 5 | fzf)"'

export obsidian_folder="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/second_brain"


function aliases_help(){
echo "projects= cd $project_folder"
echo "vi=nvim"
echo "lzd=lazydocker"
echo "ls=ls -lhA --color=auto"
echo "nvim_config= cd $HOME/.dotfiles/nvim/.config/nvim"
}


