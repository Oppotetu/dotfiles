local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action
require("theme")(config)
require("keymaps")(config)

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 11
-- config.color_scheme = 'Earthsong'
config.window_background_opacity = 0.93
config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.5
}

config.enable_tab_bar = true
config.tab_bar_at_bottom = true

wezterm.on('update-right-status', function(window, pane)
  local name = window:active_key_table()
  if name then
    name = 'TABLE: ' .. name
  end
  window:set_right_status(name or '')
end)




-- Finally, return the configuration to wezterm:
return config
