local builtin = require('telescope.builtin')
vim.keymap.set('n', '<A-f>f', builtin.find_files, {})
vim.keymap.set('n', '<A-f>b', builtin.buffers, {})
