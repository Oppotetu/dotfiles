#!/usr/bin/env bash

# This "imports" the variables from the file
source "$HOME/.config/godot/colors.sh"

SETTINGS="$HOME/.config/godot/editor_settings-4.6.tres"

echo "$BASE_R"
echo "$ACCENT_R"

sed -i \
  -e "s|^interface/theme/base_color = .*|interface/theme/base_color = Color($BASE_R, $BASE_G, $BASE_B, $BASE_A)|" \
  -e "s|^interface/theme/accent_color = .*|interface/theme/accent_color = Color($ACCENT_R, $ACCENT_G, $ACCENT_B, $ACCENT_A)|" \
  "$SETTINGS"
