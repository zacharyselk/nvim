---- Indent Blankline Options ----------------------------------------------------
-- https://github.com/lukas-reineke/indent-blankline.nvim
vim.opt.termguicolors = true
-- Original background color is #282a36
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#282a36 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guibg=#252731 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#2c2f3a gui=nocombine]]

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
       "IndentBlanklineIndent1",
       "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
       "IndentBlanklineIndent1",
       "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}

--require("indent_blankline").setup {
--    char = "|",
--    buftype_exclude = {"terminal"}
--}

---- nvim Tree -----------------------------------------------------------------
-- https://github.com/kyazdani42/nvim-tree.lua
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
--------------------------------------------------------------------------------

---- Bufferline ----------------------------------------------------------------
-- https://github.com/akinsho/bufferline.nvim
require('bufferline').setup {
  options = {
    --numbers = "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    --- @deprecated, please specify numbers as a function to customize the styling
    --number_styl = "superscript" | "subscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    --diagnostics = false | "nvim_lsp" | "coc",
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    custom_filter = function(buf_number)
      -- filter out filetypes you don't want to see
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      -- filter out by buffer name
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      -- filter out based on arbitrary rules
      -- e.g. filter out vim wiki buffer from tabline in your work repo
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
    end,
    --offsets = {{filetype = "NvimTree", text = "File Explorer" | function , text_align = "left" | "center" | "right"}},
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },
    --show_buffer_icons = true | false, -- disable filetype icons for buffers
    --show_buffer_close_icons = true | false,
    --show_close_icon = true | false,
    --show_tab_indicators = true | false,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    --separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    --enforce_regular_tabs = false | true,
    --always_show_bufferline = true | false,
    always_show_bufferline = true,
    --sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
    --  -- add custom logic
    --  return buffer_a.modified > buffer_b.modified
    --end
    sort_by = 'directory'
  }
}

---- Lualine -------------------------------------------------------------------
-- https://github.com/nvim-lualine/lualine.nvim
require('lualine').setup {
  options = { theme = "dracula" }
}

---- Nvim Colorizer ------------------------------------------------------------
-- https://github.com/norcalli/nvim-colorizer.lua
require('colorizer').setup {
  'css';
  'javascript';
  html = {
    mode = 'foreground';
  }
}

---- Nvim LspConfig ------------------------------------------------------------
-- https://github.com/neovim/nvim-lspconfig
require('lspconfig').ccls.setup{}

---- Toggleterm ----------------------------------------------------------------
-- https://github.com/akinsho/toggleterm.nvim
local present, toggle_term = pcall(require, "toggleterm")
if not present then
    return
end

--toggle_term.setup ({
--  hide_numbers = true, -- hide the number column in toggleterm buffers
--  shade_terminals = true,
--  start_in_insert = true,
--  insert_mappings = true, -- whether or not the open mapping applies in insert mode
--  persist_size = true,
--  direction = 'horizontal',
--  close_on_exit = true, -- close the terminal window when the process exits
--  float_opts = {
--    border = 'curved',
--    width = 120,
--    height = 40,
--    winblend = 3,
--    highlights = {
--      border = "Normal",
--      background = "Normal",
--    }
--  }
--})

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  --open_mapping = [[<c-\>]],
  open_mapping = [[<Leader>t]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = false,
  shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  --direction = 'vertical' | 'horizontal' | 'window' | 'float',
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = "powershell.exe", -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  --float_opts = {
  --  -- The border key is *almost* the same as 'nvim_open_win'
  --  -- see :h nvim_open_win for details on borders however
  --  -- the 'curved' border is a custom border type
  --  -- not natively supported but implemented in this plugin.
  --  --border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
  --  border = 'double',
  --  --width = <value>,
  --  height = 20,
  --  winblend = 3,
  --  highlights = {
  --    border = "Normal",
  --    background = "Normal",
  --  }
  --}
}
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
--------------------------------------------------------------------------------
