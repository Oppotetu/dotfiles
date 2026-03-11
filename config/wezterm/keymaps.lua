local wezterm = require("wezterm")
local act = wezterm.action
require 'unimus-workspace'

return function(config)
  config.leader = { key = "Space", mods = "CTRL" }

  config.keys = {
    -- Send C-a when pressing C-a twice
    { key = "o",          mods = "LEADER|CTRL", action = act.SendKey { key = "o", mods = "CTRL" } },
    { key = "[",          mods = "LEADER",      action = act.ActivateCopyMode },
    { key = ":",          mods = "LEADER",      action = act.ActivateCommandPalette },

    -- Workspace (similar to session in Tmux)
    { key = "s",          mods = "LEADER",      action = act.ShowLauncherArgs { flags = "FUZZY|WORKSPACES" } },

    -- Tab (similar to window in Tmux)
    { key = "w",          mods = "LEADER",      action = act.ShowTabNavigator },
    { key = "c",          mods = "LEADER",      action = act.SpawnTab("CurrentPaneDomain") },
    { key = "p",          mods = "LEADER",      action = act.ActivateTabRelative(-1) },
    { key = "n",          mods = "LEADER",      action = act.ActivateTabRelative(1) },

    -- Pane
    { key = "p",          mods = "LEADER",      action = act.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "i",          mods = "LEADER",      action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "h",          mods = "CTRL",        action = act.ActivatePaneDirection("Left") },
    { key = "j",          mods = "CTRL",        action = act.ActivatePaneDirection("Down") },
    { key = "k",          mods = "CTRL",        action = act.ActivatePaneDirection("Up") },
    { key = "l",          mods = "CTRL",        action = act.ActivatePaneDirection("Right") },
    { key = "phys:Space", mods = "LEADER",      action = act.RotatePanes "Clockwise" },
    { key = "m",          mods = "LEADER",      action = act.TogglePaneZoomState },
    { key = "x",          mods = "LEADER",      action = act.CloseCurrentPane { confirm = false } },
    {
      key = '!',
      mods = 'LEADER | SHIFT',
      action = wezterm.action_callback(function(win, pane)
        local tab, window = pane:move_to_new_tab()
      end),
    },
    {
      key = 'r',
      mods = 'LEADER',
      action = act.ActivateKeyTable {
        name = 'resize_pane',
        one_shot = false,
      },
    },
    {
      key = "m",
      mods = "CTRL|SHIFT",
      action = wezterm.action.EmitEvent("unimus-workspace"),
    },
    -- {
    --   key = 'w',
    --   mods = 'CTRL|SHIFT',
    --   action = wezterm.action.CloseCurrentTab { confirm = true },
    -- },
  -- Next tab
    {
      key = 'n',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(-1),
    },

    -- Previous tab
    {
      key = 'm',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(1),
    },

  }

  config.key_tables = {
    resize_pane = {
      { key = 'LeftArrow',  action = act.AdjustPaneSize { 'Left', 1 } },
      { key = 'h',          action = act.AdjustPaneSize { 'Left', 1 } },

      { key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 1 } },
      { key = 'l',          action = act.AdjustPaneSize { 'Right', 1 } },

      { key = 'UpArrow',    action = act.AdjustPaneSize { 'Up', 1 } },
      { key = 'k',          action = act.AdjustPaneSize { 'Up', 1 } },

      { key = 'DownArrow',  action = act.AdjustPaneSize { 'Down', 1 } },
      { key = 'j',          action = act.AdjustPaneSize { 'Down', 1 } },

      -- Cancel the mode by pressing escape
      { key = 'Escape',     action = 'PopKeyTable' },
    },
  }
end
