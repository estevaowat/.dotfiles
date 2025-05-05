#! /usr/bin/env zsh

sessions=(
    "$HOME/Desktop/projects"
    "$HOME/.dotfiles"
    "$HOME/Desktop/projects/node-playground"
    "$HOME/Desktop/projects/go-playground"
    "$HOME/Desktop/projects/ew-playbook"
    "$HOME/Desltop/projects/python-playground"
    "$HOME/Desktop/projects/absolute-cinema"
    "$HOME/Desktop/projects/microservice"
    "$obsidian_folder"
)

for session in $sessions; do
    ~/.dotfiles/scripts/tmux/create_session.sh "$session"
done
