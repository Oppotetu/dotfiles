local Template = {}

Template.colors = {
  background = "#13140c",
  foreground = "#e5e3d6",

  cursor_bg = "#c6cc79",
  cursor_border = "#c6cc79",
  cursor_fg = "#e5e3d6",

  selection_bg = "#c8c9a6",
  selection_fg = "#303219",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#c8c9a6",
    "#aca98a",
    "#c6cc79",
    "#ffb4ab",
    "#e5e3d6",
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
--   "#c8f0a6",      -- 10 Bright green
--   "#fff0c0", -- 11 Bright yellow
--   "#c6ccff",         -- 12 Bright blue
--   "#ffd0f0", -- 13 Bright magenta
--   "#c8f0e6", -- 14 Bright cyan
--   "#fbfbf9",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#7f8132",
  --   "#31b586",
  --   "#8b931f",
  --   "#31b586",
  --   "#919339",
  --   "#d7d1a7",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#fafbf4",
  --   "#ffffff",
  --   "#f2f5d0",
  --   "#ffffff",
  --   "#fafbf4",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#c6cc79",
      fg_color = "#303300",
    },

    inactive_tab = {
      bg_color = "#13140c", 
      fg_color = "#e5e3d6", 
    },

    new_tab = {
      bg_color = "#13140c", 
      fg_color = "#c6cc79", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#13140c",
  inactive_titlebar_bg = "#1c1c14",
}

return Template
