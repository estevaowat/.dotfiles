#! /usr/bin/env zsh

SESSION="projects"

if ! tmux has-session -t $SESSION 2>/dev/null; then
  tmux new-session -A -s $SESSION
fi

exec tmux attach-session -t $SESSION
