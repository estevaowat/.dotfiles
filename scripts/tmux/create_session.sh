PATH_SESSION=$1
SESSION_NAME=$(basename "$PATH_SESSION" | tr . _)

if ! tmux has-session -t $SESSION_NAME 2> /dev/null; then
  tmux new-session -ds $SESSION_NAME -c $PATH_SESSION
fi

tmux switch-client -t $SESSION_NAME
