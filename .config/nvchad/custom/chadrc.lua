---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
  nvdash = {
    load_on_startup = true,
    header = {
      '                                    ',
      '███╗   ██╗ ██╗   ██╗ ██╗ ███╗   ███╗',
      '████╗  ██║ ██║   ██║ ██║ ████╗ ████║',
      '██╔██╗ ██║ ██║   ██║ ██║ ██╔████╔██║',
      '██║╚██╗██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      '██║ ╚████║  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      '╚═╝  ╚═══╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
    }
  },

  tabufline = {
    enabled = true,
    lazyload = false,
    overriden_modules = function(modules)
      modules[4] = (function()
        return ""
      end)()
      -- or table.remove(modules, 4)
    end,
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
