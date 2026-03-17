#!/bin/bash

WALLPAPER_PATH_FILE="$HOME/.config/current/theme/wallpaper.txt"

if [[ ! -f "$WALLPAPER_PATH_FILE" ]]; then
  notify-send "Wallpaper path file not found" "$WALLPAPER_PATH_FILE"
  exit 1
fi

# Read the first line of wallpaper.txt safely (strip trailing NULs/newlines)
# Use read -r to avoid backslash escapes
IFS= read -r WALLPAPER_PATH < <(tr -d '\0' <"$WALLPAPER_PATH_FILE")

WALLPAPER_NAME=$(basename "$WALLPAPER_PATH")
NEW_WALLPAPER="$HOME/Pictures/wallpapers/$WALLPAPER_NAME"

if [[ ! -f "$NEW_WALLPAPER" ]]; then
  notify-send "Wallpaper image not found" "$NEW_WALLPAPER"
  exit 1
fi

# Chromium profile
PREFS="$HOME/.config/chromium/Default/Preferences"
CHROMIUM_BACKGROUND_DIR="$HOME/.config/chromium/Default"
CHROMIUM_BACKGROUND="$CHROMIUM_BACKGROUND_DIR/background.jpg"

# Ensure Chromium config dir exists
mkdir -p "$CHROMIUM_BACKGROUND_DIR"

# Copy wallpaper to Chromium background.jpg
cp -f "$NEW_WALLPAPER" "$CHROMIUM_BACKGROUND"

# If Chromium Preferences exists, ensure it uses local background.jpg
if [[ -f "$PREFS" ]]; then

  cp "$PREFS" "$PREFS.bak"

  # Set NTP background to local background.jpg and mark it as local_to_device
  jq '
    .ntp |= (
      del(.custom_background_dict, .custom_background_dict2)
      | .custom_background = {"background_url": "background.jpg"}
      | .custom_background_local_to_device = true
      | .custom_background_inspiration = false
    )
    | .theme.theme_id = "temp_trigger"
  ' "$PREFS" > "$PREFS.tmp" && mv "$PREFS.tmp" "$PREFS"

  # Remove the temporary theme id to retrigger theme logic cleanly
  jq 'del(.theme.theme_id)' "$PREFS" > "$PREFS.tmp" && mv "$PREFS.tmp" "$PREFS"
fi

if command -v xdg-open >/dev/null 2>&1; then
  # Only attempt if a chromium process exists (avoids opening URL in another browser)
  if pgrep -x chromium >/dev/null 2>&1 || pgrep -x chromium-browser >/dev/null 2>&1; then
    xdg-open "chrome://restart" >/dev/null 2>&1 || true
    echo "Triggered chrome://restart to reload Chromium Preferences."
  else
    echo "Chromium is not running; start it manually to pick up changes."
  fi
else
  echo "xdg-open not found; cannot trigger chrome://restart. Start Chromium manually."
fi
