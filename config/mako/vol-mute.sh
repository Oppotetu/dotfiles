#!/bin/bash

# Toggle mute
# pactl set-sink-mute @DEFAULT_SINK@ toggle
pamixer --toggle-mute

# Get mute status
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Show notification
if [ "$muted" = "yes" ]; then
    notify-send -h string:x-canonical-private-synchronous:volume "Volume" "Muted"
else
    vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -n1 | tr -d '%')
    notify-send -h int:value:$vol -h string:x-canonical-private-synchronous:volume "Volume" "$vol%"
fi
