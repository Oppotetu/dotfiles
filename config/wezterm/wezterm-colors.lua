local Template = {}

Template.colors = {
  background = "#121317",
  foreground = "#e2e2e7",

  cursor_bg = "#a5c8ff",
  cursor_border = "#a5c8ff",
  cursor_fg = "#e2e2e7",

  selection_bg = "#b9c7e1",
  selection_fg = "#233145",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#b9c7e1",
    "#aca98a",
    "#a5c8ff",
    "#ffb4ab",
    "#e2e2e7",
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
--   "#b9f0e1",      -- 10 Bright green
--   "#fff082", -- 11 Bright yellow
--   "#a5c8ff",         -- 12 Bright blue
--   "#ffb7f0", -- 13 Bright magenta
--   "#b9f0e6", -- 14 Bright cyan
--   "#f9f9fa",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#24498f",
  --   "#e66100",
  --   "#0045b3",
  --   "#e66100",
  --   "#2954a3",
  --   "#b0b0cf",
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
      bg_color = "#a5c8ff",
      fg_color = "#00315e",
    },

    inactive_tab = {
      bg_color = "#121317", 
      fg_color = "#e2e2e7", 
    },

    new_tab = {
      bg_color = "#121317", 
      fg_color = "#a5c8ff", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#121317",
  inactive_titlebar_bg = "#1a1c1f",
}

return Template
