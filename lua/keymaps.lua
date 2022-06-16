local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window Managment
keymap("n", "<Leader>wh", "<C-w>h", opts)  -- Move to the window to the left
keymap("n", "<Leader>wj", "<C-w>j", opts)  -- Move to the window below
keymap("n", "<Leader>wk", "<C-w>k", opts)  -- Move to the window above
keymap("n", "<Leader>wl", "<C-w>l", opts)  -- Move to the window to the right
keymap("n", "<Leader>|", "<C-w>v", opts)   -- Split veritcally
keymap("n", "<Leader>-", "<C-w>h", opts)   -- Split horizontally

-- Buffer Managment
keymap("n", "<Leader>fp", ":BufferLinePick<CR>", opts)   -- Pick a buffer
keymap("n", "<Leader>fh", ":BufferLineCyclePrev<CR>", opts)   -- Pick a buffer
keymap("n", "<Leader>fl", ":BufferLineCycleNext<CR>", opts)   -- Pick a buffer
keymap("n", "<Leader>fc", ":BufferLinePickClose<CR>", opts)   -- Pick a buffer

-- Movement
keymap("n", "H", "^", opts)  -- Move to the begining of the line
keymap("n", "L", "^", opts)  -- Move to the end of the line
keymap("n", "J", "^", opts)  -- Move to the bottom of the buffer
keymap("n", "K", "^", opts)  -- Move to the top of the buffer

-- init.vim Commands
keymap("n", "<Leader>fvg", ":e \"g:NVIM_INIT\"<CR>", opts)      -- Goto init.vim
keymap("n", "<Leader>fve", ":vsplit \"g:NVIM_INIT<CR>\"", opts) -- Edit init.vim
keymap("n", "<Leader>fvu", ":source \"g:NVIM_INIT<CR>\"", opts) -- Update init.vim

-- File Commands
keymap("n", "<Leader>fw", ":w<CR>", opts)  -- Save current file

-- Text Selection
keymap("n", "<Leader>v", "<C-v>", opts)  -- Visual block

-- NvimTree
keymap("n", "<Leader><Tab>", ":NvimTreeToggle<CR>", opts)  -- Toggle NvimTree
keymap("n", "<Leader>r", "<CMD> NvimTreeRefreash<CR>", opts)  -- Reload meta info
keymap("n", "<Leader>n", "<CMD> NvimTreeFindFile<CR>", opts)  -- Open tree folders to current file

-- Terminal
keymap("n", "<Leader>t", ":ToggleTerm<CR>", opts)  -- Toggle terminal

-- Options
keymap("n", "<Leader>-n", ":set number!<CR>", opts)  -- Toggle line numbers
keymap("n", "<Leader>-w", ":set list!<CR>", opts)    -- Toggle whitespace mode
keymap("n", "<Leader>-r", ":set cc=81<CR>", opts)    -- Turn on ruler

-- Edit
keymap("n", "<Leader>ewu", "viwU", opts)        -- Set word to uppercase
keymap("n", "<Leader>ewl", "viwu", opts)        -- Set word to lowercase
keymap("n", "<Leader>ecl", "O<ESC>jddk", opts)  -- Clear line
keymap("n", "<Leader>ew\"", "viw<ESC>a\"<ESC>bi\"<ESC>lel", opts)  -- Surround word with double quotes
keymap("n", "<Leader>ew'", "viw<ESC>a'<ESC>bi'<ESC>lel", opts)     -- Surround word with single quotes
keymap("v", "<Leader>\"", "<ESC>`>a\"<ESC>`<i\"<ESC>`>ll", opts)   -- Surround highlighted word with double quotes
keymap("v", "<Leader>'", "<ESC>`>a'<ESC>`<i'<ESC>`>ll", opts)      -- Surround highlighted word with single quotes

-- Copy
keymap("n", "<Leader>cw", "yiw", opts)  -- Copy the word that the currsor is over

-- Replace
keymap("n", "<Leader>rw", "ciw<ESC>\"Op", opts)  -- Replace word under currsor with yanked text

-- Search
keymap("n", "/", "/\\v", opts)  -- Default escape all searches
keymap("v", "/", "/\\v", opts)  -- Default escape all searches
keymap("n", "<Leader>/", ":let @/=''<CR>", opts)  -- Clear search
keymap("v", "<Leader>/", ":let @/=''<CR>", opts)  -- Clear search

-- Esc
keymap("i", "jk", "<ESC>", opts)  -- Make jk act as escape

-- Telescope
keymap("n", "<Leader>ff", "<CMD>lua require('telescope.builtin').find_files()<CR>", opts)
keymap("n", "<Leader>fg", "<CMD>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap("n", "<Leader>fb", "<CMD>lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<Leader>f?", "<CMD>lua require('telescope.builtin').help_tags()<CR>", opts)
--keymap("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", opts)
--keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", opts)
--keymap("n", "<Leader>fb", "<cmd>Telescope buffersCR>", opts)
--keymap("n", "<Leader>f?", "<cmd>Telescope help_tags<CR>", opts)

-- Bbye
keymap("n", "<Leader>fq", "<CMD>Bdelete<CR>", opts)  -- Deletes a buffer without closing nvim
--keymap("n", "<Leader>q", "<CMD>Bwipeout<CR>", opts)  -- Deletes a buffer without closing nvim

-- NvimTree
keymap("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)   -- Refresh nvim-tree
keymap("n", "<Leader>n", ":NvimTreeFindFile<CR>", opts)  -- Search for file

-- Hop
keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opts)
keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opts)
keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", opts) 
keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", opts)
keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opts)
keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opts)
--keymap('n', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", opts)
--keymap('v', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", opts)
--keymap('o', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>", opts)
