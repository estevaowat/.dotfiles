#! /usr/bin/env zsh

if ! pgrep -x "tmux" > /dev/null || ! tmux list-sessions 2>/dev/null | grep '(attached)'; then
  . $HOME/.dotfiles/scripts/tmux/setup_new_tmux.sh && tmux attach-session -t "projects"
fi
