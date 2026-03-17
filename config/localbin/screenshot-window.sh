#!/bin/bash

geom=$(hyprctl clients -j | jq -r '.[] | select(.focusHistoryID == 0) | "\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')
grim -g "$geom" - | swappy -f -