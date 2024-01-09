local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.color_scheme = 'carbonfox'
config.font = wezterm.font ('JetBrains Mono Nerd Font')
config.font_size = 18
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}




return config
