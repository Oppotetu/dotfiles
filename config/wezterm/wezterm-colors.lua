local Template = {}

Template.colors = {
  background = "#101418",
  foreground = "#e0e2e8",

  cursor_bg = "#9ccbfb",
  cursor_border = "#9ccbfb",
  cursor_fg = "#e0e2e8",

  selection_bg = "#b9c8da",
  selection_fg = "#243240",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#b9c8da",
    "#aca98a",
    "#9ccbfb",
    "#ffb4ab",
    "#e0e2e8",
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
--   "#b9f0da",      -- 10 Bright green
--   "#fff0e6", -- 11 Bright yellow
--   "#9ccbff",         -- 12 Bright blue
--   "#ffbff0", -- 13 Bright magenta
--   "#b9f0e6", -- 14 Bright cyan
--   "#f9fafb",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#2c5587",
  --   "#7524c2",
  --   "#0058b3",
  --   "#7524c2",
  --   "#32619a",
  --   "#acb6d2",
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
      bg_color = "#9ccbfb",
      fg_color = "#003354",
    },

    inactive_tab = {
      bg_color = "#101418", 
      fg_color = "#e0e2e8", 
    },

    new_tab = {
      bg_color = "#101418", 
      fg_color = "#9ccbfb", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#101418",
  inactive_titlebar_bg = "#181c20",
}

return Template
