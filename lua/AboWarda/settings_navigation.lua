local builtin = require('telescope.builtin')

-- Config command to navigate in the setting files
vim.api.nvim_create_user_command( 'Config', function() vim.cmd("Ex ~/.config/nvim") end, {})

-- keymaping for fast settings navigation
vim.keymap.set('n', '<leader>ps', function() builtin.find_files({cwd="~/.config/nvim"}) end)
vim.keymap.set('n', '<leader>psf', function() builtin.find_files({cwd="~/.config/nvim"}) end)
vim.keymap.set('n', '<leader>psG', function() builtin.live_grep({cwd="~/.config/nvim"}) end)
vim.keymap.set('n', '<leader>psg', function() builtin.grep_string({cwd="~/.config/nvim", search = vim.fn.input("Grep > ")}) end)

-- show all keymaps in the setting files
vim.keymap.set('n', '<leader>psm', function() builtin.grep_string({cwd="~/.config/nvim", search = ".*keymap.*[\'\"].[\'\"] *, *[\'\"].*[\'\"]", use_regex= true}) end)
