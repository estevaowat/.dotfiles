#! /usr/bin/env zsh

if ! pgrep -x "tmux" > /dev/null; then
    # tmux is not running, create new session and attach to default session
  . $HOME/.dotfiles/scripts/tmux/setup_new_tmux.sh
fi

if ! tmux list-sessions 2>/dev/null | grep -q '(attached)'; then
    . $HOME/.dotfiles/scripts/tmux/setup_new_tmux.sh
    tmux attach-session -t "projects"
fi
