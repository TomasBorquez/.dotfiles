---@type ChadrcConfig 
local M = {}

M.ui = {
  theme = 'radium',
  statusline = {
    theme = "minimal",
  },
  tabufline = {
   overriden_modules = function()
     return {
       buttons = function()
         return "Lewboski"
       end,
     }
   end,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M

