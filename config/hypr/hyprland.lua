-- #######################################################################################
-- HYPRLAND CONFIG
-- #######################################################################################

mod         = "SUPER"
terminal    = "wezterm"
fileManager = "thunar"
menu        = "fuzzel"
browser     = "chromium"
editor      = "code"

local config_dir = os.getenv("HOME") .. "/.config/hypr"
package.path = package.path .. ";" .. config_dir .. "/modules/?.lua"

require("monitors")
require("envs")
require("autostart")
require("permissions")
require("lookAndFeel")
require("input")
require("bindings")
require("windowRules")
