local Template = {}

Template.colors = {
  foreground = "#dfe4dd",
  background = "#0f1511",

  cursor_bg = "#91d5ac",
  cursor_border = "#91d5ac",
  cursor_fg = "#dfe4dd",

  selection_bg = "#b5ccbb",
  selection_fg = "#203529",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#b5ccbb",
    "#aca98a",
    "#91d5ac",
    "#ffb4ab",
    "#dfe4dd",
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
--   "#b5f0bb",      -- 10 Bright green
--   "#fff0dc", -- 11 Bright yellow
--   "#91d5ff",         -- 12 Bright blue
--   "#ffcdf0", -- 13 Bright magenta
--   "#b5f0e6", -- 14 Bright cyan
--   "#fafaf9",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#377c49",
  --   "#2398c2",
  --   "#1f934d",
  --   "#2398c2",
  --   "#3f8d53",
  --   "#b8d0ae",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#ffffff",
  --   "#ffffff",
  --   "#ebfbf1",
  --   "#ffffff",
  --   "#ffffff",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#91d5ac",
      fg_color = "#003921",
    },

    inactive_tab = {
      bg_color = "#0f1511", 
      fg_color = "#dfe4dd", 
    },

    new_tab = {
      bg_color = "#0f1511", 
      fg_color = "#91d5ac", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#0f1511",
  inactive_titlebar_bg = "#171d19",
}

return Template
