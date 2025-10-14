#! /usr/bin/env zsh

sessions=(
    "$HOME/Desktop/projects"
    "$HOME/.dotfiles"
    "$HOME/Desktop/projects/go-playground"
    "$obsidian_folder"
)

for session in $sessions; do
    ~/.dotfiles/scripts/tmux/create_session.sh "$session"
done
