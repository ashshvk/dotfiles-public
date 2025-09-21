
#!/bin/bash

# Get current outer gap from any visible workspace (usually the active one)
CURRENT_GAPS=$(i3-msg -t get_tree | jq -r '
  .. | objects | select(.type? == "workspace" and .visible == true) | .gaps.outer' | head -n1)

# Default to 0 if jq fails
CURRENT_GAPS=${CURRENT_GAPS:-0}

# Toggle gaps
if [ "$CURRENT_GAPS" -eq 0 ]; then
  i3-msg "gaps inner all set 5; gaps outer all set 30"
else
  i3-msg "gaps inner all set 0; gaps outer all set 0"
fi
