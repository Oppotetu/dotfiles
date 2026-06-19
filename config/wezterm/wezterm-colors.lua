local Template = {}

Template.colors = {
  background = "#17130d",
  foreground = "#ece1d7",

  cursor_bg = "#ffc06c",
  cursor_border = "#ffc06c",
  cursor_fg = "#ece1d7",

  selection_bg = "#e2c199",
  selection_fg = "#412c10",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#e2c199",
    "#aca98a",
    "#ffc06c",
    "#ffb4ab",
    "#ece1d7",
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
--   "#e2f099",      -- 10 Bright green
--   "#fff0ff", -- 11 Bright yellow
--   "#ffc0ff",         -- 12 Bright blue
--   "#ffd0f0", -- 13 Bright magenta
--   "#e2f0e6", -- 14 Bright cyan
--   "#fcfaf8",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#9d6016",
  --   "#0075e6",
  --   "#b36600",
  --   "#0075e6",
  --   "#b36d19",
  --   "#e0be9f",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#fffdfc",
  --   "#ffffff",
  --   "#fff7ec",
  --   "#ffffff",
  --   "#fffdfc",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#ffc06c",
      fg_color = "#462b00",
    },

    inactive_tab = {
      bg_color = "#17130d", 
      fg_color = "#ece1d7", 
    },

    new_tab = {
      bg_color = "#17130d", 
      fg_color = "#ffc06c", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#17130d",
  inactive_titlebar_bg = "#201b15",
}

return Template
