local Template = {}

Template.colors = {
  background = "#101414",
  foreground = "#dfe3e3",

  cursor_bg = "#7cd4db",
  cursor_border = "#7cd4db",
  cursor_fg = "#dfe3e3",

  selection_bg = "#abcdcf",
  selection_fg = "#153537",


  ansi = {
    "#000000",
    "#ffb4ab", 
    "#abcdcf",
    "#aca98a",
    "#7cd4db",
    "#ffb4ab",
    "#dfe3e3",
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
--   "#abf0cf",      -- 10 Bright green
--   "#fff08b", -- 11 Bright yellow
--   "#7cd4ff",         -- 12 Bright blue
--   "#ffb6f0", -- 13 Bright magenta
--   "#abf0e6", -- 14 Bright cyan
--   "#fafafa",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#991000", 
  --   "#2f7f83",
  --   "#e65500",
  --   "#15949e",
  --   "#e65500",
  --   "#369196",
  --   "#b1cdcd",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ffffff", 
  --   "#fcfefe",
  --   "#ffffff",
  --   "#dcf8fa",
  --   "#ffffff",
  --   "#fcfefe",
  --   "#ffffff",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#7cd4db",
      fg_color = "#00373a",
    },

    inactive_tab = {
      bg_color = "#101414", 
      fg_color = "#dfe3e3", 
    },

    new_tab = {
      bg_color = "#101414", 
      fg_color = "#7cd4db", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#101414",
  inactive_titlebar_bg = "#181c1d",
}

return Template
