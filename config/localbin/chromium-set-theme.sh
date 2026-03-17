#!/usr/bin/env bash

CHROMIUM_THEME="$HOME/.config/current/theme/chromium.themeW"

if [[ -f $CHROMIUM_THEME ]]; then
  THEME_HEX_COLOR=$(<"$CHROMIUM_THEME")
else
  THEME_HEX_COLOR="#1c2027"
fi

if command -v chromium >/dev/null 2>&1; then  # No external script needed
  echo "{\"BrowserThemeColor\": \"$THEME_HEX_COLOR\"}" > "/etc/chromium/policies/managed/color.json"
  chromium --refresh-platform-policy --no-startup-window >/dev/null 2>&1
fi

