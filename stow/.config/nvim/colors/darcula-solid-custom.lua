vim.opt.background = 'dark'
vim.g.colors_name = 'darcula-solid-custom'

local lush = require('lush')
local darcula_solid = require('lush_theme.darcula-solid')
local spec = lush.extends({darcula_solid}).with(function(injected_functions)
    -- Your modifications go here...
    -- Pallete copied from https://github.com/briones-gabriel/darcula-solid.nvim/blob/main/lua/lush_theme/darcula-solid.lua
    local yellow  = lush.hsl(37, 100, 71)
    local orange  = lush.hsl(27, 61, 50)
    local yellow  = lush.hsl(37, 100, 71)
    local sym = injected_functions.sym

    return {
        Function { fg = yellow };
        PreProc { fg = yellow };
        sym "@include" { fg = orange };
        sym "@type.qualifier" { fg = orange };
        sym "@type.builtin" { fg = orange };
        sym "@constant" { fg = yellow };
    }
end)

lush(spec)
