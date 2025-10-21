
#!/bin/bash

# Reset Caps Lock behavior
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Control_L"
xmodmap -e "add control = Control_L"

# Tap for Esc, hold for Ctrl
xcape -e 'Control_L=Escape'

# Start Kanata for home row mods
