#!/usr/bin/env bash

OUTPUT="eDP-2"

CONFIRMATION="$(printf "Off\nOn\nCancel" |
    fuzzel --dmenu -l 4 -w 25 -p "Toggle builtin screen")"

# Detect compositor
if [[ "$XDG_CURRENT_DESKTOP" == *"Hyprland"* ]]; then
    ENV="hyprland"
elif [[ "$XDG_CURRENT_DESKTOP" == *"KDE"* ]] || [[ "$KDE_FULL_SESSION" == "true" ]]; then
    ENV="kde"
else
    ENV="unknown"
fi

case "$ENV" in
hyprland)
    if [[ "$CONFIRMATION" == "Off" ]]; then
        # hyprctl keyword monitor "$OUTPUT,disable"
        hyprmon --profile gaming
    elif [[ "$CONFIRMATION" == "On" ]]; then
        hyprmon --profile home
    else
        echo "Invalid argument: $ACTION"
        exit 1
    fi
    ;;

kde)
    if [[ "$ACTION" == "off" ]]; then
        kscreen-doctor output.$OUTPUT.disable
    elif [[ "$ACTION" == "on" ]]; then
        kscreen-doctor output.$OUTPUT.enable
    else
        echo "Invalid argument: $ACTION"
        exit 1
    fi
    ;;
*)
    echo "Unknown desktop environment."
    exit 1
    ;;
esac
