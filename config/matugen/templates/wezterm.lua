local Template = {}

Template.colors = {
  foreground = "{{ colors.on_surface.default.hex }}",
  background = "{{ colors.surface.default.hex }}",

  cursor_bg = "{{ colors.primary.default.hex }}",
  cursor_border = "{{ colors.primary.default.hex }}",
  cursor_fg = "{{ colors.on_surface.default.hex }}",

  selection_bg = "{{ colors.secondary.default.hex }}",
  selection_fg = "{{ colors.on_secondary.default.hex }}",


  ansi = {
    "{{ colors.shadow.default.hex }}",
    "{{ colors.error.default.hex }}", 
    "{{ colors.secondary.default.hex }}",
    "#aca98a",
    "{{ colors.primary.default.hex }}",
    "{{ colors.error.default.hex }}",
    "{{ colors.on_surface.default.hex }}",
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
--   "{{ colors.shadow.default.hex | to_color | set_lightness: 45 }}",      -- 8 Bright black
--   "{{ colors.error.default.hex | to_color | set_red: 255 }}",            -- 9 Bright red
--   "{{ colors.secondary.default.hex | to_color | set_green: 240 }}",      -- 10 Bright green
--   "{{ colors.tertiary.default.hex | to_color | set_red: 255 | set_green: 240 }}", -- 11 Bright yellow
--   "{{ colors.primary.default.hex | to_color | set_blue: 255 }}",         -- 12 Bright blue
--   "{{ colors.tertiary.default.hex | to_color | set_red: 255 | set_blue: 240 }}", -- 13 Bright magenta
--   "{{ colors.secondary.default.hex | to_color | set_green: 240 | set_blue: 230 }}", -- 14 Bright cyan
--   "{{ colors.on_surface.default.hex | to_color | set_lightness: 98 }}",  -- 15 Bright white
-- },


  -- ansi = {
  --   "{{ colors.shadow.default.hex | to_color | saturate: 20.0, "hsl" | set_lightness: 25 }}",
  --   "{{ colors.error.default.hex | to_color | saturate: 25.0, "hsl" | set_lightness: 30 }}", 
  --   "{{ colors.secondary.default.hex | to_color | saturate: 20.0, "hsl" | set_lightness: 35 }}",
  --   "{{ colors.tertiary.default.hex | to_color | saturate: 25.0, "hsl" | set_lightness: 45 }}",
  --   "{{ colors.primary.default.hex | to_color | saturate: 20.0, "hsl" | set_lightness: 35 }}",
  --   "{{ colors.tertiary.default.hex | to_color | saturate: 25.0, "hsl" | set_lightness: 45 }}",
  --   "{{ colors.secondary.default.hex | to_color | saturate: 20.0, "hsl" | set_lightness: 40 }}",
  --   "{{ colors.on_surface.default.hex | to_color | saturate: 15.0, "hsl" | set_lightness: 75 }}",
  -- },

  -- brights = {
  --   "{{ colors.shadow.default.hex | to_color | saturate: 20.0, "hsl" | lighten: 15.0 }}",
  --   "{{ colors.error.default.hex | to_color | saturate: 25.0, "hsl" | lighten: 20.0 }}", 
  --   "{{ colors.secondary.default.hex | to_color | saturate: 20.0, "hsl" | lighten: 25.0 }}",
  --   "{{ colors.tertiary.default.hex | to_color | saturate: 25.0, "hsl" | lighten: 30.0 }}",
  --   "{{ colors.primary.default.hex | to_color | saturate: 20.0, "hsl" | lighten: 25.0 }}",
  --   "{{ colors.tertiary.default.hex | to_color | saturate: 25.0, "hsl" | lighten: 30.0 }}",
  --   "{{ colors.secondary.default.hex | to_color | saturate: 20.0, "hsl" | lighten: 25.0 }}",
  --   "{{ colors.on_surface.default.hex | to_color | saturate: 15.0, "hsl" | lighten: 20.0 }}",
  -- },



  tab_bar = {

    active_tab = {
      bg_color = "{{ colors.primary.default.hex }}",
      fg_color = "{{ colors.on_primary.default.hex }}",
    },

    inactive_tab = {
      bg_color = "{{ colors.surface.default.hex }}", 
      fg_color = "{{ colors.on_surface.default.hex }}", 
    },

    new_tab = {
      bg_color = "{{ colors.surface.default.hex }}", 
      fg_color = "{{ colors.primary.default.hex }}", 
    }
  }

}

Template.window_frame = {
  active_titlebar_bg = "{{ colors.surface.default.hex }}",
  inactive_titlebar_bg = "{{ colors.surface_container_low.default.hex }}",
}

return Template
