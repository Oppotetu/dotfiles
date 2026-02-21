-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local action = wezterm.action

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


config.enable_tab_bar = false

config.leader = { key = "o", mods = "CTRL" }

config.keys = {
  -- Send C-a when pressing C-a twice
  { key = "o", mods = "LEADER|CTRL", action = action.SendKey { key = "o", mods = "CTRL" } },
  { key = "[", mods = "LEADER",      action = action.ActivateCopyMode },
  { key = ":", mods = "LEADER",      action = action.ActivateCommandPalette },

  -- Workspace (similar to session in Tmux)
  { key = "s", mods = "LEADER",      action = action.ShowLauncherArgs { flags = "FUZZY|WORKSPACES" } },

  -- Tab (similar to window in Tmux)
  { key = "w", mods = "LEADER",      action = action.ShowTabNavigator },
  { key = "c", mods = "LEADER",      action = action.SpawnTab("CurrentPaneDomain") },
  { key = "p", mods = "LEADER",      action = action.ActivateTabRelative(-1) },
  { key = "n", mods = "LEADER",      action = action.ActivateTabRelative(1) },

  -- Pane
  { key = "p",         mods = "LEADER", action = action.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "i",          mods = "LEADER", action = action.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "h",          mods = "LEADER", action = action.ActivatePaneDirection("Left") },
  { key = "j",          mods = "LEADER", action = action.ActivatePaneDirection("Down") },
  { key = "k",          mods = "LEADER", action = action.ActivatePaneDirection("Up") },
  { key = "l",          mods = "LEADER", action = action.ActivatePaneDirection("Right") },
  { key = "phys:Space", mods = "LEADER", action = action.RotatePanes "Clockwise" },
  { key = "z",          mods = "LEADER", action = action.TogglePaneZoomState },
  { key = "x",          mods = "LEADER", action = action.CloseCurrentPane { confirm = true } },
  {
    key = '!',
    mods = 'LEADER | SHIFT',
    action = wezterm.action_callback(function(win, pane)
      local tab, window = pane:move_to_new_tab()
    end),
  },

}


-- Finally, return the configuration to wezterm:
return config


