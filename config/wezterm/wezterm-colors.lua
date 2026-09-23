local Template = {}

Template.colors = {
  background = "#131318",
  foreground = "#e4e1e8",

  cursor_bg = "#bdc2ff",
  cursor_border = "#bdc2ff",
  cursor_fg = "#e4e1e8",

  selection_bg = "#c3c4e6",
  selection_fg = "#2c2e49",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#c3c4e6",
    "#aca98a",
    "#bdc2ff",
    "#ffb4ab",
    "#e4e1e8",
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
--   "#c3f0e6",      -- 10 Bright green
--   "#fff062", -- 11 Bright yellow
--   "#bdc2ff",         -- 12 Bright blue
--   "#ffc2f0", -- 13 Bright magenta
--   "#c3f0e6", -- 14 Bright cyan
--   "#faf9fb",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#232690",
  --   "#e6a300",
  --   "#000eb3",
  --   "#e6a300",
  --   "#282ba4",
  --   "#bdadd1",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#ffffff",
  --   "#fff7e5",
  --   "#ffffff",
  --   "#fff7e5",
  --   "#ffffff",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#bdc2ff",
      fg_color = "#22286d",
    },

    inactive_tab = {
      bg_color = "#131318", 
      fg_color = "#e4e1e8", 
    },

    new_tab = {
      bg_color = "#131318", 
      fg_color = "#bdc2ff", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#131318",
  inactive_titlebar_bg = "#1b1b20",
}

return Template
