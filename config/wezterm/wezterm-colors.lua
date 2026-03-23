local Template = {}

Template.colors = {
  background = "#12140e",
  foreground = "#e2e3d8",

  cursor_bg = "#b2d18a",
  cursor_border = "#b2d18a",
  cursor_fg = "#e2e3d8",

  selection_bg = "#c0cbad",
  selection_fg = "#2a331e",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#c0cbad",
    "#aca98a",
    "#b2d18a",
    "#ffb4ab",
    "#e2e3d8",
    "#f0f0f0",
  },

  brights = {
    "#4c4c4c",
    "#c49ea0", 
    "#9ec49f",
    "#c4c19e",
    "#a39ec4",
    "#c49ec4",
    "#9ec3c4",
    "#e7e7e7",
  },

-- brights = {
--   "#737373",      -- 8 Bright black
--   "#ffb4ab",            -- 9 Bright red
--   "#c0f0ad",      -- 10 Bright green
--   "#fff0cb", -- 11 Bright yellow
--   "#b2d1ff",         -- 12 Bright blue
--   "#ffd0f0", -- 13 Bright magenta
--   "#c0f0e6", -- 14 Bright cyan
--   "#fbfbf9",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#637f33",
  --   "#2fb6a8",
  --   "#609221",
  --   "#2fb6a8",
  --   "#72913b",
  --   "#d0d3ab",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#fcfdfa",
  --   "#ffffff",
  --   "#eff9e2",
  --   "#ffffff",
  --   "#fcfdfa",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#b2d18a",
      fg_color = "#1f3701",
    },

    inactive_tab = {
      bg_color = "#12140e", 
      fg_color = "#e2e3d8", 
    },

    new_tab = {
      bg_color = "#12140e", 
      fg_color = "#b2d18a", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#12140e",
  inactive_titlebar_bg = "#1a1c16",
}

return Template
