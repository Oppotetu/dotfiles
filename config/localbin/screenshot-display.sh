#!/bin/bash

output=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')
grim -o "$output" - | swappy -f -