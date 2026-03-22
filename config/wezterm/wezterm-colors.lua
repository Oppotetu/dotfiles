local Template = {}

Template.colors = {
  background = "#1a110f",
  foreground = "#f1dfda",

  cursor_bg = "#ffb5a1",
  cursor_border = "#ffb5a1",
  cursor_fg = "#f1dfda",

  selection_bg = "#e7bdb2",
  selection_fg = "#442a23",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#e7bdb2",
    "#aca98a",
    "#ffb5a1",
    "#ffb4ab",
    "#f1dfda",
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
--   "#e7f0b2",      -- 10 Bright green
--   "#fff08d", -- 11 Bright yellow
--   "#ffb5ff",         -- 12 Bright blue
--   "#ffc5f0", -- 13 Bright magenta
--   "#e7f0e6", -- 14 Bright cyan
--   "#fcf9f8",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#9a3319",
  --   "#c99c1d",
  --   "#b32600",
  --   "#c99c1d",
  --   "#b03b1c",
  --   "#e6aa99",
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
      bg_color = "#ffb5a1",
      fg_color = "#561f10",
    },

    inactive_tab = {
      bg_color = "#1a110f", 
      fg_color = "#f1dfda", 
    },

    new_tab = {
      bg_color = "#1a110f", 
      fg_color = "#ffb5a1", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#1a110f",
  inactive_titlebar_bg = "#231917",
}

return Template
