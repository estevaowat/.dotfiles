#! /usr/bin/env zsh

SESSION="projects"

if ! tmux has-session -t $SESSION 2>/dev/null; then
    ~/.dotfiles/scripts/tmux/setup_new_tmux.sh
fi

exec tmux attach-session -t $SESSION
