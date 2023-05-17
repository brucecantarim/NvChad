--@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'yoru',
  theme_toggle = { 'yoru', 'gatekeeper' },

  statusline = {
    theme = 'default',
    separator_style = 'default',
    overriden_modules = nil,
  },

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,
    header = {
      " ██   ██ ███████ ██      ██       ██████  ",
      " ██   ██ ██      ██      ██      ██    ██ ",
      " ███████ █████   ██      ██      ██    ██ ",
      " ██   ██ ██      ██      ██      ██    ██ ",
      " ██   ██ ███████ ███████ ███████  ██████  ",
    },
  }
}

M.mappings = require('custom.mappings')

M.plugins = 'custom.plugins'

return M
