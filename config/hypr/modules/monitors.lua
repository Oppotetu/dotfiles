hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-2" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-2" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-2" })

hl.monitor({
    output    = "desc:Samsung Display Corp. 0x4188",
    mode      = "2880x1800@120.00100",
    position  = "4100x470",
    scale     = 2.0,
    transform = 0,
    vrr       = 0,
})