#!/bin/bash

# grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" - | swappy -f -


geom=$(hyprctl clients -j | jq -r '.[] | select(.focusHistoryID == 0) | "\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
grim -g "$geom" - | swappy -f -