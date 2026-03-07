#!/bin/bash

ACTION="$1"

CONFIRMATION="$(printf "No\nYes" | \
fuzzel --dmenu  -l 2 -w 18 -p "$ACTION?" --select="Yes")"

if [[ "$CONFIRMATION" == "Yes" ]]; then
    case "$ACTION" in
        shutdown) systemctl poweroff ;;
        reboot) systemctl reboot ;;
        logout) hyprctl dispatch exit ;;
    esac
fi
