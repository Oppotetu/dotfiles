local Template = {}

Template.colors = {
  foreground = "#f1dfda",
  background = "#1a110f",

  cursor_bg = "#ffb5a1",
  cursor_border = "#ffb5a1",
  cursor_fg = "#f1dfda",

  selection_bg = "#ffb5a1",
  selection_fg = "#1a110f",

ansi = {
  "#262626",        -- 0 Black
  "#dcb4ab",            -- 1 Red  
  "#e7c8b2",      -- 2 Green
  "#dcb48d", -- 3 Yellow
  "#ffb5d2",         -- 4 Blue
  "#d2c5c8", -- 5 Magenta
  "#e7beb4", -- 6 Cyan
  "#eacfc7",  -- 7 White
},

brights = {
  "#737373",      -- 8 Bright black
  "#ffb4ab",            -- 9 Bright red
  "#e7f0b2",      -- 10 Bright green
  "#fff08d", -- 11 Bright yellow
  "#ffb5ff",         -- 12 Bright blue
  "#ffc5f0", -- 13 Bright magenta
  "#e7f0e6", -- 14 Bright cyan
  "#fcf9f8",  -- 15 Bright white
},


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


  -- ansi = {
  --   "#000000",
  --   "#ffb4ab", 
  --   "#e7bdb2",
  --   "#d9c58d",
  --   "#ffb5a1",
  --   "#d9c58d",
  --   "#e7bdb2",
  --   "#f1dfda",
  -- },

  -- brights = {
  --   "#000000",
  --   "#ffb4ab", 
  --   "#e7bdb2",
  --   "#d9c58d",
  --   "#ffb5a1",
  --   "#d9c58d",
  --   "#e7bdb2",
  --   "#f1dfda",
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
