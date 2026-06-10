-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

hl.env("GTK_USE_PORTAL", "1")

hl.config({
    debug = {
        disable_logs = false,
        gl_debugging = true,
    },
})

-- env = XDG_CURRENT_DESKTOP,Hyprland
-- env = XDG_SESSION_TYPE,wayland
-- env = WLR_NO_HARDWARE_CURSORS,1
-- env = WLR_RENDERER,gbm
-- env = GBM_BACKEND,nvidia-drm
