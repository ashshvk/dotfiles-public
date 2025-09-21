#!/bin/bash

# Get the current border style of the focused window
CURRENT=$(i3-msg -t get_tree | jq '.. | select(.focused?) | .border' -r)

# Toggle between no border and border without titlebar
if [ "$CURRENT" = "none" ]; then
    # Show thin border only (no titlebar)
    i3-msg "border pixel 2"
else
    # Hide all borders and titlebar
    i3-msg "border none"
fi
