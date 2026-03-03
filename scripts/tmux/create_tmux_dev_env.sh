#! /usr/bin/env zsh

tmux new-window -n code -c $(pwd)
tmux new-window -n ai -c $(pwd)
tmux new-window -n terminal -c $(pwd)
