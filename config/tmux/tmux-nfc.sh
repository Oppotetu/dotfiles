#!/bin/bash

WINDOW_NAME="nfc"

BASE="~/src/nfc"
FRONTEND="$BASE/nfc-frontend"
DEPLOY="$BASE/deploy/dev"
DOCS="~/Documents/docs"

CURRENT_SESSIONS=$(tmux list-sessions 2>/dev/null)

if [ -z "$CURRENT_SESSIONS" ]; then
    read -p "Enter the name of the new session: " SESSION_NAME
    tmux new-session -d -s "$SESSION_NAME" -c "$BASE"
    tmux rename-window -t "$SESSION_NAME:0" "$WINDOW_NAME"
else
    echo "Active sessions:"
    echo "$CURRENT_SESSIONS" | awk -F: '{print $1}'
    echo "Please choose an existing session by name or type 'new' to create a new session:"
    read -p "> " USER_CHOICE

    if echo "$CURRENT_SESSIONS" | grep -q "^$USER_CHOICE:"; then
        SESSION_NAME="$USER_CHOICE"
        tmux new-window -t "$SESSION_NAME" -n "$WINDOW_NAME" -c "$BASE"
    else
        echo "Invalid choice. Exiting."
        exit 1
    fi
fi

WINDOW_TARGET="${SESSION_NAME}:$WINDOW_NAME"

tmux split-window -v -t "$WINDOW_TARGET" -c "$BASE"
tmux split-window -h -t "$WINDOW_TARGET.1" -c "$BASE"
tmux split-window -h -t "$WINDOW_TARGET.0" -c "$BASE"
tmux split-window -h -t "$WINDOW_TARGET.0" -l 66% -c "$BASE"
tmux split-window -h -t "$WINDOW_TARGET.1" -c "$BASE"
tmux split-window -h -t "$WINDOW_TARGET.4" -c "$BASE"

tmux send-keys -t "$WINDOW_TARGET.0" "cd ${DOCS}" C-m
tmux send-keys -t "$WINDOW_TARGET.1" "cd ${DOCS}" C-m
tmux send-keys -t "$WINDOW_TARGET.2" "cd ${DOCS}" C-m
tmux send-keys -t "$WINDOW_TARGET.3" "cd ${DOCS}" C-m
tmux send-keys -t "$WINDOW_TARGET.4" "cd ${DEPLOY}" C-m
tmux send-keys -t "$WINDOW_TARGET.5" "cd ${FRONTEND}" C-m
tmux send-keys -t "$WINDOW_TARGET.6" "cd ${FRONTEND}" C-m

tmux attach -t "$SESSION_NAME"
