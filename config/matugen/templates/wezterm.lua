local Template = {}

Template.colors = {
  foreground = "{{ colors.on_surface.default.hex }}",
  background = "{{ colors.surface.default.hex }}",

  cursor_bg = "{{ colors.primary.default.hex }}",
  cursor_border = "{{ colors.primary.default.hex }}",
  cursor_fg = "{{ colors.on_surface.default.hex }}",

  selection_bg = "{{ colors.primary.default.hex }}",
  selection_fg = "{{ colors.surface.default.hex }}",


  ansi = {
    "{{ colors.shadow.default.hex }}",
    "{{ colors.error.default.red }}", 
    "{{ colors.secondary.default.green }}",
    "{{ colors.tertiary.default.yellow }}",
    "{{ colors.primary.default.hex }}",
    "{{ colors.tertiary.default.hex }}",
    "{{ colors.secondary.default.hex }}",
    "{{ colors.on_surface.default.hex }}",
  },

  brights = {
    "{{ colors.shadow.default.hex }}",
    "{{ colors.error.default.red }}", 
    "{{ colors.secondary.default.green }}",
    "{{ colors.tertiary.default.yellow }}",
    "{{ colors.primary.default.hex }}",
    "{{ colors.tertiary.default.hex }}",
    "{{ colors.secondary.default.hex }}",
    "{{ colors.on_surface.default.hex }}",
  },

-- ansi = {
--   "{{ colors.shadow.default.hex | to_color | set_lightness: 15 }}",        -- 0 Black
--   "{{ colors.error.default.hex | to_color | set_red: 220 }}",            -- 1 Red  
--   "{{ colors.secondary.default.hex | to_color | set_green: 200 }}",      -- 2 Green
--   "{{ colors.tertiary.default.hex | to_color | set_red: 220 | set_green: 180 }}", -- 3 Yellow
--   "{{ colors.primary.default.hex | to_color | set_blue: 210 }}",         -- 4 Blue
--   "{{ colors.tertiary.default.hex | to_color | set_red: 210 | set_blue: 200 }}", -- 5 Magenta
--   "{{ colors.secondary.default.hex | to_color | set_green: 190 | set_blue: 180 }}", -- 6 Cyan
--   "{{ colors.on_surface.default.hex | to_color | set_lightness: 85 }}",  -- 7 White
-- },

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
