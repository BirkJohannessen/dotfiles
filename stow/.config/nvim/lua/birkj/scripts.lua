local m = {}

function m.saneformat()
    vim.opt.expandtab = true
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    -- vim.cmd("%retab")
    -- vim.cmd("normal! gg=G")
end

vim.api.nvim_create_user_command("Saneformat", m.saneformat, {})
