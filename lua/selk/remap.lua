vim.g.mapleader = " "
vim.keymap.set("n", "<Leader><tab>", vim.cmd.NvimTreeToggle)
vim.keymap.set("i", "jk", "<Esc>")

-- Window managment
vim.keymap.set("n", "<Leader>w|", vim.cmd.vsplit)
vim.keymap.set("n", "<Leader>w-", vim.cmd.split)
vim.keymap.set("n", "<Leader>wh", "<C-w>h") 
vim.keymap.set("n", "<Leader>wj", "<C-w>j") 
vim.keymap.set("n", "<Leader>wk", "<C-w>k") 
vim.keymap.set("n", "<Leader>wl", "<C-w>l") 
