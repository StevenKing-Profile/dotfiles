local wezterm = require 'wezterm'
   local config = wezterm.config_builder()

   -- Font Configuration
   config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
   config.font_size = 11

   -- Appearance
   config.color_scheme = 'Catppuccin Macchiato'
   config.window_background_opacity = 0.95
   config.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }

   -- Clipboard & Protocol Support
   config.set_environment_variables = {
     TERMINFO_DIRS = '/usr/share/terminfo',
   }

   return config
