#!/bin/bash
# Show pane-border-status only when the window has more than one row of panes
# (i.e., at least one pane has something below it).
window_id="$1"
rows=$(tmux list-panes -t "$window_id" -F "#{pane_top}" | sort -u | wc -l)
if [ "$rows" -gt 1 ]; then
  tmux set-window-option -t "$window_id" pane-border-status bottom
else
  tmux set-window-option -t "$window_id" pane-border-status off
fi
