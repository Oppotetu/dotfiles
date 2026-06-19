-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    hl.exec_cmd("hyprdynamicmonitors run")
    hl.exec_cmd("hypridle")

    -- hl.exec_cmd("ghostty --gtk-single-instance=true --quit-after-last-window-closed=false --initial-window=false")

    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar -c ~/.config/waybar/themes/glass/config.jsonc -s ~/.config/waybar/themes/glass/style.css")

    hl.exec_cmd("skwd-daemon")


    hl.exec_cmd("xremap --watch ~/.config/xremap/config.yml")

    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- hl.exec_cmd("insync start")
end)
