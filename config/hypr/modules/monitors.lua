----------------
---- MONITORS ----
----------------

hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-2" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-2" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-2" })

hl.monitor({
    output   = "eDP-2",
    mode     = "2880x1800@120.00",
    position = "2624x544",
    scale    = 2.00,
})

-- hl.monitor({ output = "eDP-2", disabled = true })

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "2560x1440@144.00",
    position = "0x0",
    scale    = 1.00,
})
