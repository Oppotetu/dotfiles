-- ~/.wezterm.lua
local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

-- Adjust paths to your actual absolute paths
local BASE     = os.getenv("HOME") .. "/src/ds-unimus"
local FRONTEND = BASE .. "/unimus-frontend"
local BACKEND  = BASE .. "/unimus-backend"
local DEPLOY   = BACKEND .. "/deploy/dev"
local DOCS     = os.getenv("HOME") .. "/Documents/docs"

wezterm.on("unimus-workspace", function(window, pane)
  local HOME = os.getenv("HOME")

  local BASE = HOME .. "/src/ds-unimus"
  local FRONTEND = BASE .. "/unimus-frontend"
  local BACKEND = BASE .. "/unimus-backend"
  local DEPLOY = BACKEND .. "/deploy/dev"
  local DOCS = HOME .. "/Documents/docs"

 -- Create a new TAB in the CURRENT WINDOW instead of a new window
  local muxwin = window:mux_window()
  local tab, root = muxwin:spawn_tab{
    cwd = DOCS,
  }

  -- -- Create window
  -- local tab, root, window = mux.spawn_window{
  --   workspace = "unimus",
  --   cwd = DOCS,
  -- }

  --
  -- Split into TOP and BOTTOM rows
  --
  local bottom = root:split{
    direction = "Bottom",
    size = 0.5,
    cwd = BASE,
  }

  local top = root

  top:send_text('nvim oppstart.txt\n')

  --
  -- TOP ROW: 4 columns
  --
  local topLeft1 = top:split{
    direction = "Left",
    size = 0.50,
    cwd = DOCS,
  }

  local topLeft2 = topLeft1:split{
    direction = "Left",
    size = 0.333,
    cwd = DOCS,
  }

  local topLeft3 = topLeft1:split{
    direction = "Left",
    size = 0.50,
    cwd = DOCS,
  }

  local topRight1 = top:split{
    direction = "Bottom",
    size = 0.50,
    cwd = DEPLOY,
  }

  -- --
  -- -- BOTTOM ROW: 3 columns
  -- --

  local bottomLeft = bottom:split{
    direction = "Left",
    size = 0.5,
    cwd = BACKEND,
  }

  local bottomLeft2 = bottomLeft:split{
    direction = "Right",
    size = 0.50,
    cwd = FRONTEND,
  }

  local bottomLeftCenter = bottomLeft2:split{
    direction = "Bottom",
    size = 0.50,
    cwd = FRONTEND,
  }



  -- mux.set_active_workspace("unimus")

end)

