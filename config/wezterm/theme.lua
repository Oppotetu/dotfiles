local wezterm = require("wezterm")
-- local colors = dofile(os.getenv("HOME") .. "/.cache/wallust/colors-wezterm.lua")
local colors = require("wezterm-colors")
return function(config)
    -- config.color_scheme = "Catppuccin Mocha"
    --  config.color_scheme = 'Earthsong'
    config.colors = colors.colors
    config.window_frame = colors.window_frame
    -- config.color_scheme = 'Ocean (base16)'

    -- config.window_background_opacity = 0.93
    -- config.inactive_pane_hsb = {
    --   saturation = 0.24,
    --   brightness = 0.5
    -- }
end
