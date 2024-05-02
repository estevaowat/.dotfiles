#!/bin/zsh

sessions=(
    "$HOME/.dotfiles" 
    "$HOME/Desktop/projects/node-playground"
    "$HOME/Desktop/projects/go-playground"
    "$obsidian_folder"
)

for session in $sessions; do 
    echo "creating session to $session"
    ~/.dotfiles/scripts/tmux/create_session.sh "$session"
done
