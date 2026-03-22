#! /usr/bin/env zsh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SESSION_NAME=$1
START_PATH=${2:-$HOME}

if [[ -z "$SESSION_NAME" ]]; then
    echo "Usage: $0 <session-name> [path]"
    exit 1
fi

if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux new-session -d -s "$SESSION_NAME" -n "$SESSION_NAME" -c "$START_PATH"
fi

tmux send-keys -t "$SESSION_NAME" "$SCRIPT_DIR/create_tmux_dev_env.sh" Enter
