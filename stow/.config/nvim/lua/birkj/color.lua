local c = {}

function c.rosePine()
  vim.cmd.colorscheme('rose-pine')
  local config = {
    indent = { char = "┊" },
  }
  require('ibl').setup(config)
end

function c.dracula()
  vim.cmd 'colorscheme darcula-solid-custom'
  local config = {
    indent = { char = "┊" },
  }
  require('ibl').setup(config)
end

function c.tokyoNight()
  vim.cmd 'colorscheme tokyonight'
  local config = {
    indent = { char = "┊" },
  }
  require('ibl').setup(config)
end

return c
