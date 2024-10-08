Harpoon_mark = require("harpoon.mark")
Harpoon_Ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>e", Harpoon_Ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() Harpoon_Ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() Harpoon_Ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() Harpoon_Ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() Harpoon_Ui.nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() Harpoon_Ui.nav_file(4) end)
vim.keymap.set("n", "<leader>6", function() Harpoon_Ui.nav_file(4) end)
vim.keymap.set("n", "<leader>7", function() Harpoon_Ui.nav_file(4) end)
vim.keymap.set("n", "<leader>8", function() Harpoon_Ui.nav_file(4) end)
