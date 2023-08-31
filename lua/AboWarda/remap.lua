
-- move Selected section
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- fix navigation
vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")

-- keep cursor in place while appending lines
vim.keymap.set("n", "J", "mzJ`z")
-- keep cursor in the middle while half page juming
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing copied buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- delete without keeping the deleted buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- ***not working***
vim.api.nvim_set_keymap("n", "<leader>[", "<leader><leader>", {noremap = true, silent = true})

-- make "ctrl-q" equivalent to escape in insert mode
vim.keymap.set("i", "<C-q>", "<Esc>")

-- map Q to do nothing
vim.api.nvim_set_keymap("n", "<C-q>", "<nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<C-q>", "<nop>",{noremap = true, silent = true})

-- ***not working*** as intended
-- replace the word that the cursor is on in the selected section
vim.api.nvim_set_keymap("v", "<leader>s", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>", {noremap = true, silent = true})

-- replace the word that the cursor is on in the entier buffer
vim.api.nvim_set_keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {noremap = true, silent = true})
-- noremap -> https://github.com/miltonllera/neovim-config/blob/master/lua/utils.lua

