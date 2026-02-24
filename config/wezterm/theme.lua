local wezterm = require("wezterm")
local act = wezterm.action
local colors = require("colors")
return function(config)
  -- config.color_scheme = "Catppuccin Mocha"
  config.colors = colors
end
