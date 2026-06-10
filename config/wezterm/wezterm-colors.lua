local Template = {}

Template.colors = {
  background = "#f6fbf4",
  foreground = "#171d19",

  cursor_bg = "#296a48",
  cursor_border = "#296a48",
  cursor_fg = "#171d19",

  selection_bg = "#4e6355",
  selection_fg = "#ffffff",


  ansi = {
    "#000000",
    "#ba1a1a", 
    "#4e6355",
    "#aca98a",
    "#296a48",
    "#ba1a1a",
    "#171d19",
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
--   "#4ef055",      -- 10 Bright green
--   "#fff071", -- 11 Bright yellow
--   "#296aff",         -- 12 Bright blue
--   "#ff64f0", -- 13 Bright magenta
--   "#4ef0e6", -- 14 Bright cyan
--   "#f9fafa",  -- 15 Bright white
-- },


  -- ansi = {
  --   "#404040",
  --   "#990000", 
  --   "#3d7650",
  --   "#3294b3",
  --   "#209357",
  --   "#3294b3",
  --   "#45875b",
  --   "#aed0ba",
  -- },

  -- brights = {
  --   "#262626",
  --   "#ff3b3b", 
  --   "#78b98d",
  --   "#6ebed7",
  --   "#3ed586",
  --   "#6ebed7",
  --   "#78b98d",
  --   "#396146",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "#296a48",
      fg_color = "#ffffff",
    },

    inactive_tab = {
      bg_color = "#f6fbf4", 
      fg_color = "#171d19", 
    },

    new_tab = {
      bg_color = "#f6fbf4", 
      fg_color = "#296a48", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "#f6fbf4",
  inactive_titlebar_bg = "#f0f5ee",
}

return Template
