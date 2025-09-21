#! /usr/bin/bash
chosen=$(printf "Lock\nPower Off\nRestart\nLogout" | rofi -dmenu -i -theme-str 'entry { enabled: false; } prompt { enabled: false; } inputbar { enabled: false; } listview { lines: 4; }') 

case "$chosen" in
  "Lock") i3lock ;;
  "Power Off") systemctl poweroff ;;
  "Restart") systemctl reboot ;;
  "Logout") i3-msg exit ;;
esac

