#!/usr/bin/env bash

OUTPUT="eDP-2"

CONFIRMATION="$(printf "Off\nOn\nCancel" | \
fuzzel --dmenu  -l 4 -w 25 -p "Toggle builtin screen")"

# Detect compositor
if [[ "$XDG_CURRENT_DESKTOP" == *"Hyprland"* ]] ; then
    ENV="hyprland"
elif [[ "$XDG_CURRENT_DESKTOP" == *"KDE"* ]] || [[ "$KDE_FULL_SESSION" == "true" ]]; then
    ENV="kde"
elif [[ -n "$SWAYSOCK" ]] || [[ "$XDG_CURRENT_DESKTOP" == *"sway"* ]]; then
    ENV="sway"
elif [[ "$WAYLAND_DISPLAY" != "" ]]; then
    ENV="wayland"
else
    ENV="unknown"
fi

case "$ENV" in
    hyprland)
        if [[ "$CONFIRMATION" == "Off" ]]; then
            hyprctl keyword monitor "$OUTPUT,disable"
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

    sway)
        if [[ "$ACTION" == "off" ]]; then
            swaymsg output $OUTPUT disable
        elif [[ "$ACTION" == "on" ]]; then
            swaymsg output $OUTPUT enable
        else
            echo "Invalid argument: $ACTION"
            exit 1
        fi
        ;;

    wayland)
        echo "Generic Wayland detected. Trying wlr-randr..."

        if [[ "$ACTION" == "off" ]]; then
            wlr-randr --output $OUTPUT --off
        elif [[ "$ACTION" == "on" ]]; then
            wlr-randr --output $OUTPUT --on
        fi
        ;;

    *)
        echo "Unknown desktop environment."
        exit 1
        ;;
esac