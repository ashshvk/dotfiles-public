#! /usr/bin/bash
chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i -theme-str 'entry { enabled: false; } prompt { enabled: false; } inputbar { enabled: false; } listview { lines: 3; }') 

case "$chosen" in
  "Power Off") poweroff ;;
  "Restart") reboot ;;
  "Lock") slock ;;
  *) exit 1 ;;
esac

