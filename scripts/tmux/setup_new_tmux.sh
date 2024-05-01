#!/bin/zsh

sessions=(
    "$HOME/.dotfiles" 
    "$HOME/Desktop/projects/node-playground"
    "$HOME/Desktop/projects/go-playground"
)

for session in $sessions; do 
    ~/.dotfiles/scripts/tmux/create_session.sh "$session"
done
