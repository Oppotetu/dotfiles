---------------------
---- KEYBINDINGS ----
---------------------

hl.bind(mod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + N", hl.dsp.exec_cmd(fileManager))
hl.bind(mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + R", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
hl.bind(mod .. " + SHIFT + R", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-- Suspend / logout / reboot / shutdown
hl.bind(mod .. " + CTRL + Q", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd("~/.local/bin/power-menu.sh"))
hl.bind(mod .. " + CTRL + SHIFT + S", hl.dsp.exec_cmd("~/.local/bin/confirm-action.sh shutdown"))
hl.bind(mod .. " + CTRL + SHIFT + R", hl.dsp.exec_cmd("~/.local/bin/confirm-action.sh reboot"))
hl.bind(mod .. " + CTRL + SHIFT + L", hl.dsp.exec_cmd("~/.local/bin/confirm-action.sh logout"))
hl.bind(mod .. " + O", hl.dsp.exec_cmd("gtklock"))

hl.bind(mod .. " + CTRL + SHIFT + O", hl.dsp.exec_cmd("~/.local/bin/builtin-screen.sh"))
hl.bind(mod .. " + CTRL + I", hl.dsp.exec_cmd("~/.local/bin/wallpaper-picker.sh"))

-- Popup TUIs
hl.bind(mod .. " + M", hl.dsp.exec_cmd("wezterm start spotify_player"))
hl.bind(mod .. " + CTRL + W", hl.dsp.exec_cmd("wezterm start --class floating-gazelle gazelle"))
hl.bind(mod .. " + CTRL + B", hl.dsp.exec_cmd("wezterm start --class floating-bluetui bluetui"))
hl.bind(mod .. " + CTRL + P", hl.dsp.exec_cmd("wezterm start --class floating-btop btop"))
hl.bind(mod .. " + CTRL + M", hl.dsp.exec_cmd("wezterm start --class floating-hyprmon hyprmon"))
hl.bind(mod .. " + CTRL + A", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(mod .. " + CTRL + N", hl.dsp.exec_cmd("swaync-client -t -sw"))

-- Universal copy, paste, cut and undo
hl.bind(mod .. " + C", hl.dsp.send_shortcut({ mods = "CTRL", key = "INSERT" }), { description = "Universal copy" })
hl.bind(mod .. " + V", hl.dsp.send_shortcut({ mods = "SHIFT", key = "INSERT" }), { description = "Universal paste" })
hl.bind(mod .. " + X", hl.dsp.send_shortcut({ mods = "CTRL", key = "X" }), { description = "Universal cut" })
hl.bind(mod .. " + Z", hl.dsp.send_shortcut({ mods = "CTRL", key = "Z" }), { description = "Universal undo" })
hl.bind(mod .. " + CTRL + V", hl.dsp.exec_cmd("omarchy-launch-walker -m clipboard"), { description = "Clipboard manager" })

-- Screenshot
hl.bind("Print", hl.dsp.exec_cmd("bash -lc 'grim -g \"$(slurp)\" - | swappy -f -'"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("~/.local/bin/screenshot-window.sh"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("~/.local/bin/screenshot-display.sh"))

hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(mod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + SHIFT + N", hl.dsp.workspace.move({ monitor = "+1" }))
hl.bind(mod .. " + BACKSPACE", hl.dsp.exec_cmd('hyprctl dispatch setprop "address:$(hyprctl activewindow -j | jq -r \'.address\')" opaque toggle'), { description = "Toggle window transparency" })
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Focus (arrow keys)
hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Focus (vim keys)
hl.bind(mod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move windows
hl.bind(mod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mod + [0-9]
for i = 1, 10 do
    local key = i % 10
    hl.bind(mod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Resize active window
hl.bind(mod .. " + CTRL + H", hl.dsp.window.resize({ x = -75, y = 0,  relative = true }), { description = "Expand window left" })
hl.bind(mod .. " + CTRL + L", hl.dsp.window.resize({ x = 75,  y = 0,  relative = true }), { description = "Shrink window left" })
hl.bind(mod .. " + CTRL + K", hl.dsp.window.resize({ x = 0,   y = -50, relative = true }), { description = "Shrink window up" })
hl.bind(mod .. " + CTRL + J", hl.dsp.window.resize({ x = 0,   y = 50,  relative = true }), { description = "Expand window down" })

-- Example special workspace (scratchpad)
hl.bind(mod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces
hl.bind(mod .. " + TAB",         hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mod + LMB/RMB and dragging
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd('wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ && notify-send "Volume" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@)" -h string:x-canonical-private-synchronous:volume'), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && notify-send "Volume" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@)" -h string:x-canonical-private-synchronous:volume'), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && notify-send "Volume" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@)" -h string:x-canonical-private-synchronous:volume'), { locked = true, repeating = true })

hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && notify-send "Microphone" "$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)" -h string:x-canonical-private-synchronous:mic'), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd('brightnessctl -e4 -n2 set 5%+ && notify-send "Brightness" "$(brightnessctl g)" -h string:x-canonical-private-synchronous:brightness'), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd('brightnessctl -e4 -n2 set 5%- && notify-send "Brightness" "$(brightnessctl g)" -h string:x-canonical-private-synchronous:brightness'), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Caps lock notifier – stays active when locked
-- hl.bind("Caps_Lock", hl.dsp.exec_cmd("~/.local/bin/mako-caps-toggle.sh"), { locked = true })
