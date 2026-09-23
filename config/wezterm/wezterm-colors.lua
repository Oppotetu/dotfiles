local Template = {}

Template.colors = {
  background = "#101416",
  foreground = "#e0e3e6",

  cursor_bg = "#89cff7",
  cursor_border = "#89cff7",
  cursor_fg = "#e0e3e6",

  selection_bg = "#b0cadc",
  selection_fg = "#1a3341",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#b0cadc",
    "#aca98a",
    "#89cff7",
    "#ffb4ab",
    "#e0e3e6",
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
--   "#b0f0dc",      -- 10 Bright green
--   "#fff06d", -- 11 Bright yellow
--   "#89cfff",         -- 12 Bright blue
--   "#ffb9f0", -- 13 Bright magenta
--   "#b0f0e6", -- 14 Bright cyan
--   "#f9fafa",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#25638e",
  --   "#e67800",
  --   "#0072b3",
  --   "#e67800",
  --   "#2a71a2",
  --   "#afbfd0",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#89cff7",
      fg_color = "#003549",
    },

    inactive_tab = {
      bg_color = "#101416", 
      fg_color = "#e0e3e6", 
    },

    new_tab = {
      bg_color = "#101416", 
      fg_color = "#89cff7", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#101416",
  inactive_titlebar_bg = "#191c1e",
}

return Template
