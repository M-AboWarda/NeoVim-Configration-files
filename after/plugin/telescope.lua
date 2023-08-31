local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pv", function() vim.cmd("Ex") end)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pG', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pg', function()  
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- telescope is also used in /lua/AboWarda/settings_navigaion.lua
