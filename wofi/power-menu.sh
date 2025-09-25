#!/bin/bash

option=$(echo -e "Shutdown\nReboot\nSleep\nLogout" | wofi --show dmenu --prompt "Power Menu" --style ~/.config/wofi/style-dmenu.css) 

case "$option" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Sleep) systemctl suspend ;;
  Logout) hyprctl dispatch exit ;;  # if using Hyprland
esac

