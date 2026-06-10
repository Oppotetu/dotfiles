local wezterm = require("wezterm")
local colors = require("wezterm-colors")
return function(config)
    -- config.color_scheme = "Catppuccin Mocha"
    -- config.color_scheme = 'Lost Woods (terminal.sexy)'
    -- config.color_scheme = 'Solarized Light (Gogh)'
    config.colors = colors.colors
    config.window_frame = colors.window_frame
end
