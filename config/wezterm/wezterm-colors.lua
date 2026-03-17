local Template = {}

Template.colors = {
  background = "#19120d",
  foreground = "#efdfd6",

  cursor_bg = "#ffb780",
  cursor_border = "#ffb780",
  cursor_fg = "#efdfd6",

  selection_bg = "#e4c0a6",
  selection_fg = "#422b1a",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#e4c0a6",
    "#aca98a",
    "#ffb780",
    "#ffb4ab",
    "#efdfd6",
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
--   "#e4f0a6",      -- 10 Bright green
--   "#fff095", -- 11 Bright yellow
--   "#ffb7ff",         -- 12 Bright blue
--   "#ffcbf0", -- 13 Bright magenta
--   "#e4f0e6", -- 14 Bright cyan
--   "#fcf9f8",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#9b4f18",
  --   "#aab72f",
  --   "#b34d00",
  --   "#aab72f",
  --   "#b15a1b",
  --   "#e5b59a",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#ffffff",
  --   "#fefefb",
  --   "#ffffff",
  --   "#fefefb",
  --   "#ffffff",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#ffb780",
      fg_color = "#4e2600",
    },

    inactive_tab = {
      bg_color = "#19120d", 
      fg_color = "#efdfd6", 
    },

    new_tab = {
      bg_color = "#19120d", 
      fg_color = "#ffb780", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#19120d",
  inactive_titlebar_bg = "#221a14",
}

return Template
