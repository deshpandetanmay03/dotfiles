local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<A-a>", mark.add_file)
vim.keymap.set("n", "<A-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<A-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<A-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<A-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<A-;>", function() ui.nav_file(4) end)
