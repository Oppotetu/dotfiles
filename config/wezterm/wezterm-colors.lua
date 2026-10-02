local Template = {}

Template.colors = {
  background = "#13140c",
  foreground = "#e5e3d5",

  cursor_bg = "#c2cf57",
  cursor_border = "#c2cf57",
  cursor_fg = "#e5e3d5",

  selection_bg = "#c6cb93",
  selection_fg = "#2f3309",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#c6cb93",
    "#aca98a",
    "#c2cf57",
    "#ffb4ab",
    "#e5e3d5",
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
--   "#c6f093",      -- 10 Bright green
--   "#fff0ff", -- 11 Bright yellow
--   "#c2cfff",         -- 12 Bright blue
--   "#ffb5f0", -- 13 Bright magenta
--   "#c6f0e6", -- 14 Bright cyan
--   "#fbfbf9",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#828a28",
  --   "#9200e6",
  --   "#8e9d16",
  --   "#9200e6",
  --   "#949e2e",
  --   "#d8d2a7",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#f6f8e6",
  --   "#ffffff",
  --   "#edf4b1",
  --   "#ffffff",
  --   "#f6f8e6",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#c2cf57",
      fg_color = "#2e3300",
    },

    inactive_tab = {
      bg_color = "#13140c", 
      fg_color = "#e5e3d5", 
    },

    new_tab = {
      bg_color = "#13140c", 
      fg_color = "#c2cf57", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#13140c",
  inactive_titlebar_bg = "#1c1c14",
}

return Template
