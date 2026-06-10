--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name    = "chromium-opacity",
    opacity = "1 override 1 override 1 override",
    match   = { class = "chromium" },
})

hl.window_rule({
    name    = "chrome-opacity",
    opacity = "1 override 1 override 1 override",
    match   = { class = "google-chrome" },
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name    = "floating-spotify",
    float   = true,
    center  = true,
    size    = "1000 750",
    opacity = "1 override 1 override 1 override",
    match   = { class = "floating-spotify" },
})

hl.window_rule({
    name    = "floating-gazelle",
    float   = true,
    center  = true,
    size    = "1100 800",
    opacity = "1 override 1 override 1 override",
    match   = { class = "floating-gazelle" },
})

hl.window_rule({
    name   = "floating-bluetui",
    float  = true,
    center = true,
    size   = "800 800",
    match  = { class = "floating-bluetui" },
})

hl.window_rule({
    name   = "floating-btop",
    float  = true,
    center = true,
    size   = "1300 800",
    match  = { class = "floating-btop" },
})

hl.window_rule({
    name   = "floating-hyprmon",
    float  = true,
    center = true,
    match  = { class = "floating-hyprmon" },
})

hl.window_rule({
    name  = "floating-steam-friendslist",
    float = true,
    match = { class = "steam", title = "Friends List" },
})

hl.window_rule({
    name   = "floating-save-file",
    float  = true,
    center = true,
    match  = { class = "google-chrome", title = "Save File" },
})

hl.window_rule({
    name   = "floating-open-files",
    float  = true,
    center = true,
    match  = { class = "xdg-desktop-portal-gtk", title = "Open Files" },
})

hl.window_rule({
    name   = "floating-open-folder",
    float  = true,
    center = true,
    match  = { class = "xdg-desktop-portal-gtk", title = "Open Folder" },
})

hl.window_rule({
    name   = "floating-thunar-file-operation-progress",
    float  = true,
    center = true,
    match  = { class = "thunar", title = "File Operation Progress" },
})

hl.window_rule({
    name   = "floating-godot-debug",
    float  = true,
    center = true,
    match  = { title = ".*\\(DEBUG\\)" },
})

hl.window_rule({
    name    = "godot-opacity",
    opacity = "1 override 1 override 1 override",
    match   = { class = "Godot" },
})

hl.window_rule({
    name   = "floating-pavucontrol",
    float  = true,
    center = true,
    size   = "800 600",
    match  = { class = "org.pulseaudio.pavucontrol", title = "Volume Control" },
})

hl.window_rule({
    name    = "blender-opacity",
    opacity = "1 override 1 override 1 override",
    match   = { class = "blender" },
})

hl.window_rule({
    name   = "floating-blender-file-view",
    center = true,
    size   = "850 750",
    match  = { class = "blender", title = "Blender File View" },
})
