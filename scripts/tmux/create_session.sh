#! /usr/bin/env zsh
PATH_SESSION=$1
SESSION_NAME=$(basename "$PATH_SESSION"| tr . _ | tr ' ' '_')

if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
    tmux new-session -d -s "$SESSION_NAME" -c "$PATH_SESSION" -n "$SESSION_NAME"
fi
