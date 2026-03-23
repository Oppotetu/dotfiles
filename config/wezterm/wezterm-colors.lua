local Template = {}

Template.colors = {
  background = "#0e1415",
  foreground = "#dde4e4",

  cursor_bg = "#80d4d9",
  cursor_border = "#80d4d9",
  cursor_fg = "#dde4e4",

  selection_bg = "#b1cccd",
  selection_fg = "#1b3436",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#b1cccd",
    "#aca98a",
    "#80d4d9",
    "#ffb4ab",
    "#dde4e4",
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
--   "#b1f0cd",      -- 10 Bright green
--   "#fff0e9", -- 11 Bright yellow
--   "#80d4ff",         -- 12 Bright blue
--   "#ffc7f0", -- 13 Bright magenta
--   "#b1f0e6", -- 14 Bright cyan
--   "#f9fafa",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#347c7f",
  --   "#1855cd",
  --   "#17949b",
  --   "#1855cd",
  --   "#3b8e91",
  --   "#aed0d0",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#ffffff",
  --   "#ffffff",
  --   "#def9fa",
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#80d4d9",
      fg_color = "#003739",
    },

    inactive_tab = {
      bg_color = "#0e1415", 
      fg_color = "#dde4e4", 
    },

    new_tab = {
      bg_color = "#0e1415", 
      fg_color = "#80d4d9", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#0e1415",
  inactive_titlebar_bg = "#161d1d",
}

return Template
