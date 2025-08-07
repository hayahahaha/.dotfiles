#!/bin/bash

# Define your service commands
# IMPORTANT: Replace these with the actual commands to start your services
DB_CMD="db"
FRONTEND_CMD="cd ~/frontend && pnpm run dev"
BFF_SERVICE_CMD="cd ~/bff && pnpm start:dev"
BACKEND_SERVICE_CMD="cd ~/backend && pnpm start:dev"


# Define your tmux session and window names
SESSION_NAME="one"
WINDOW_NAME="dev"

tmux has-session -t "$SESSION_NAME" 2>/dev/null

if [ $? != 0 ]; then
    echo "Creating new tmux session: $SESSION_NAME"
    tmux new-session -s "$SESSION_NAME" -n "$WINDOW_NAME" -d

    tmux split-window -v -t "$SESSION_NAME:$WINDOW_NAME.0"

    tmux select-pane -t "$SESSION_NAME:$WINDOW_NAME.0"
    tmux split-window -h -t "$SESSION_NAME:$WINDOW_NAME.0"

    tmux select-pane -t "$SESSION_NAME:$WINDOW_NAME.1"
    tmux split-window -h -t "$SESSION_NAME:$WINDOW_NAME.1"

    tmux select-layout -t "$SESSION_NAME:$WINDOW_NAME" tiled

    echo "Services started. Attaching to tmux session..."

    tmux send-keys -t one:dev.0 "$DB_CMD" C-m
    tmux send-keys -t one:dev.1 "$FRONTEND_CMD" C-m
    tmux send-keys -t one:dev.2 "$BFF_SERVICE_CMD" C-m
    tmux send-keys -t one:dev.3 "$BACKEND_SERVICE_CMD" C-m

    tmux attach-session -t "$SESSION_NAME"
else
    echo "Tmux session '$SESSION_NAME' already exists. Attaching to it."
    tmux attach-session -t "$SESSION_NAME"
fi
