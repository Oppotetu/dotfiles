local Template = {}

Template.colors = {
  background = "#f5fafc",
  foreground = "#171c1e",

  cursor_bg = "#00687b",
  cursor_border = "#00687b",
  cursor_fg = "#171c1e",

  selection_bg = "#4b6269",
  selection_fg = "#ffffff",


  ansi = {
    "#000000",
    "#ba1a1a", 
    "#4b6269",
    "#aca98a",
    "#00687b",
    "#ba1a1a",
    "#171c1e",
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
--   "#ff1a1a",            -- 9 Bright red
--   "#4bf069",      -- 10 Bright green
--   "#fff07e", -- 11 Bright yellow
--   "#0068ff",         -- 12 Bright blue
--   "#ff5cf0", -- 13 Bright magenta
--   "#4bf0e6", -- 14 Bright cyan
--   "#f9fafb",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#990000", 
  --   "#396b7a",
  --   "#414ea4",
  --   "#0097b3",
  --   "#414ea4",
  --   "#417a8b",
  --   "#adc7d1",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ff3b3b", 
  --   "#75aebf",
  --   "#98a0d6",
  --   "#00d4fb",
  --   "#98a0d6",
  --   "#75aebf",
  --   "#385763",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#00687b",
      fg_color = "#ffffff",
    },

    inactive_tab = {
      bg_color = "#f5fafc", 
      fg_color = "#171c1e", 
    },

    new_tab = {
      bg_color = "#f5fafc", 
      fg_color = "#00687b", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#f5fafc",
  inactive_titlebar_bg = "#eff4f7",
}

return Template
