#!/usr/bin/env bash

CHROMIUM_THEME="$HOME/.config/current/theme/chromium.theme"

if [[ -f $CHROMIUM_THEME ]]; then
  THEME_HEX_COLOR=$(<"$CHROMIUM_THEME")
else
  THEME_HEX_COLOR="#1c2027"
fi

if command -v chromium >/dev/null 2>&1; then  # No external script needed
  echo "{\"BrowserThemeColor\": \"$THEME_HEX_COLOR\"}" > "/etc/chromium/policies/managed/color.json"
  chromium --refresh-platform-policy --no-startup-window >/dev/null 2>&1
fi

# CHROMIUM_THEME="$HOME/.config/current/theme/chromium.theme"

# if [[ -f $CHROMIUM_THEME ]]; then
#   THEME_HEX_COLOR=$(<$CHROMIUM_THEME)  # Just read the hex directly
# else
#   THEME_HEX_COLOR="#1c2027"
# fi

# if cmd-present.sh chromium; then
#   echo "{\"BrowserThemeColor\": \"$THEME_HEX_COLOR\"}" | tee "/etc/chromium/policies/managed/color.json" >/dev/null
#   chromium --refresh-platform-policy --no-startup-window >/dev/null 2>&1
# fi

# CHROMIUM_THEME="$HOME/.config/current/theme/chromium.theme"

# echo "DEBUG: Starting posthook" >> /tmp/matugen-debug.log
# echo "DEBUG: Theme file exists: $([[ -f $CHROMIUM_THEME ]] && echo yes || echo no)" >> /tmp/matugen-debug.log

# if [[ -f $CHROMIUM_THEME ]]; then
#   THEME_HEX_COLOR=$(<"$CHROMIUM_THEME")
#   echo "DEBUG: Read color: '$THEME_HEX_COLOR'" >> /tmp/matugen-debug.log
# else
#   THEME_HEX_COLOR="#1c2027"
#   echo "DEBUG: Using default color" >> /tmp/matugen-debug.log
# fi

# if command -v chromium >/dev/null 2>&1; then
#   echo "{\"BrowserThemeColor\": \"$THEME_HEX_COLOR\"}" > "/etc/chromium/policies/managed/color.json"
#   echo "DEBUG: Wrote JSON to policy" >> /tmp/matugen-debug.log
#   chromium --refresh-platform-policy --no-startup-window >/dev/null 2>&1
#   echo "DEBUG: Refreshed chromium" >> /tmp/matugen-debug.log
# else
#   echo "DEBUG: Chromium not found" >> /tmp/matugen-debug.log
# fi




