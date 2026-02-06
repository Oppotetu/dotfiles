#!/bin/bash

# Toggle microphone
pactl set-source-mute @DEFAULT_SOURCE@ toggle

# Get mic status
muted=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

# Send notification
if [ "$muted" = "yes" ]; then
    notify-send -h string:x-canonical-private-synchronous:mic "Microphone" "Muted"
else
    notify-send -h string:x-canonical-private-synchronous:mic "Microphone" "Active"
fi
