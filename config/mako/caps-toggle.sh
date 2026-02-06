#!/bin/bash

# Toggle caps lock on Wayland
# current=$(gdbus call --session \
#     --dest org.gnome.Shell \
#     --object-path /org/gnome/Shell \
#     --method org.gnome.Shell.Eval "global.get_pointer().get_keyboard_state()[2]")

current2=$(swaymsg -t get_inputs | jq -r '.[] | select(.type=="keyboard") | .xkb_active_layout_name')

echo "$current2"

# current is something like (true,)
# if [[ $current == *true* ]]; then
#     state="ON"
# else
#     state="OFF"
# fi

# # Send notification
# notify-send -h string:x-canonical-private-synchronous:caps "Caps Lock" "$state"
