""" Misc """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo  "  MMM"
echo  "d(^_^)b"
echo " \\| |/"
echo  "  (#)"
echo  "  |||"
echo  "  d^b"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" Environment Variables """""""""""""""""""""""""""""""""""""""""""""""""""""
let $RTP=split(&runtimepath, ',')[0]
"let $NVIM_HOME= $HOME . "/.config/nvim"
let $NVIM_HOME=$RTP
let $NVIM_INIT= $MYVIMRC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Configurations """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set noshiftround
set number numberwidth=3
set nowrap
"set listchars=eol:$,tab:▸\ ,trail:~,extends:>,precedes:<,space:·
set listchars=eol:$,tab:--,trail:~,extends:>,precedes:<,space:·
set hlsearch incsearch ignorecase smartcase showmatch
set showmode showcmd
set updatetime=300 hidden 
set cmdheight=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Personal Keybindings """"""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>"

" Command mode
nnoremap <Leader><Leader> :

" Window managment
nnoremap <silent> <Leader>wh <C-w>h|  " Move to the window to left
nnoremap <silent> <Leader>wj <C-w>j|  " Move to the window below
nnoremap <silent> <Leader>wk <C-w>k|  " Move to the window above
nnoremap <silent> <Leader>wl <C-w>l|  " Move to the window to the right
nnoremap <Leader>wq :q<CR>|           " Kill the current window

" Buffer managment
"nnoremap <Leader>bt :execute "rightbelow vsplit " . bufname("#")<CR>|  " Open the last buffer in a new window
nnoremap <silent> <Leader>fp :BufferLinePick<CR>
nnoremap <silent> <Leader>fh :BufferLineCyclePrev<CR>
nnoremap <silent> <Leader>fl :BufferLineCycleNext<CR>

" Movement
nnoremap H ^|  " Move to the begining of the line
nnoremap L $|  " Move to the end of the line
nnoremap J L|  " Move to the bottom of the buffer
nnoremap K H|  " Move to the top of the buffer

" init.vim commands
nnoremap <silent> <Leader>fvg :e $NVIM_INIT<CR>|       " Goto init.vim
nnoremap <silent> <Leader>fve :vsplit $NVIM_INIT<CR>|  " Edit init.vim
nnoremap <Leader>fvu :source $NVIM_INIT<CR>|           " Source init.vim

" File commands
nnoremap <Leader>fw :w<CR>|   " Save current file
"inoremap <C-s> <ESC>:w<CR>i|  " Save current file

" Visual commands
nnoremap <Leader>v <C-v>|  " Visual block (TODO remove?)

" NerdTree
"nnoremap <silent> <Leader><Tab> :NERDTreeToggle<CR>
nnoremap <silent> <Leader><Tab> :NvimTreeToggle<CR>

" Terminal
"nnoremap <silent> <Leader>t :call ChooseTerm("term-slider", 1)<CR>
"nnoremap <silent> <Leader>t <C-\>
nnoremap <silent> <Leader>t :ToggleTerm<CR>
"tnoremap <silent> <Leader>r1 :resize 10<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r2 :resize 20<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r3 :resize 30<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r4 :resize 40<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r5 :resize 50<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r6 :resize 60<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r7 :resize 70<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r8 :resize 80<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r9 :resize 90<CR>|   " Resize the terminal window
"tnoremap <silent> <Leader>r0 :resize 100<CR>|  " Resize the terminal window

" FzF
nnoremap <Leader>p :FZF<CR>

" Options
nnoremap <Leader>-n :set number!<CR>|  " Toggle numbers
nnoremap <Leader>-w :set list!<CR>|    " Toggle whitespace mode
nnoremap <Leader>-r :set cc=81<CR>|    " Turn on ruler

" Edit
nnoremap <Leader>ewu viwU|        " Set word to uppercase
nnoremap <Leader>ewl viwu|        " Set word to lowercase
nnoremap <Leader>ecl O<esc>jddk|  " Clear the current line
nnoremap <Leader>ew" viw<esc>a"<esc>bi"<esc>lel|  " Put "quotes" around word
nnoremap <Leader>ew' viw<esc>a'<esc>bi'<esc>lel|  " Put 'quotes' around word
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>`>ll|  " Put "quotes" around highlighted text
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>`>ll|  " Put 'quotes' around highlighted text

" Copy
nnoremap <Leader>cw yiw|  " Copies the word that the currsor is currently on

" Replace
nnoremap <Leader>rw ciw<ESC>"0p|  " Replaces the word that  the currsor is currently on with the last text yanked

" Search
nnoremap / /\v|                     " Default escape all text
vnoremap / /\v|                     " Default excape all text
nnoremap <Leader>/ :let @/=''<CR>|  " Clear search
vnoremap <Leader>/ :let @/=''<CR>|  " Clear search

" Help
nnoremap <Leader>hh :help<SPACE>|  " Enter command mode for help
nnoremap <Leader>hw K|             " Lookup the command under the cursor

" Esc
inoremap jk <ESC>|       " Don't need the escape button?
inoremap <ESC> <NOP>|    " Disable until comfortable
inoremap <UP> <NOP>|     " Disable until comfortable
inoremap <DOWN> <NOP>|   " Disable until comfortable
inoremap <LEFT> <NOP>|   " Disable until comfortable
inoremap <RIGHT> <NOP>|  " Disable until comfortable
nnoremap <UP> <NOP>|     " Disable until comfortable
nnoremap <DOWN> <NOP>|   " Disable until comfortable
nnoremap <LEFT> <NOP>|   " Disable until comfortable
nnoremap <RIGHT> <NOP>|  " Disable until comfortable
"tnoremap <ESC> <NOP>|    " Disable until comfortable
"tnoremap <UP> <NOP>|     " Disable until comfortable
"tnoremap <DOWN> <NOP>|   " Disable until comfortable
"tnoremap <LEFT> <NOP>|   " Disable until comfortable
"tnoremap <RIGHT> <NOP>|  " Disable until comfortable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Other """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restore last position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Loading """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call abbreviations#LoadAbbreviations()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" Instals """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('$NVIM_HOME/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Plugins
call plug#begin('$NVIM_HOME/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
""Plug 'preservim/nerdtree'
""Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
""Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Plug 'vim-airline/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
""Plug 'JuliaEditorSupport/julia-vim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'akinsho/toggleterm.nvim'
"Plug 'rafamadriz/friendly-snippets'
"Plug 'L3MON4D3/LuaSnip'
call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $NVIM_INIT
\| endif

let g:rust_recommended_style = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Theme """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme dracula

" Set the font
set guifont=Hack_Nerd_Font:h11
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" File Explorer """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_action = {
  \ '<Leader>t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" If ag is installed on the system, use it
" TODO add notice if ag is not installed
if executable("ag")
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" Terminal """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If in windows set shell to powershell
"if has("win32")
"  "set shell=C:\system32\WindowsPowerShell\v1.0\powershell.exe
"  set shell=powershell.exe
"endif

"" open new split panes to right and below
"set splitright
"set splitbelow
"" turn terminal to normal mode with escape
"tnoremap <Esc> <C-\><C-n>
"" start terminal in insert mode
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
"" open terminal on ctrl+n
"function! OpenTerminal()
"  split term://bash
"  resize 10
"endfunction
"
"function! ChooseTerm(termname, slider)
"    let pane = bufwinnr(a:termname)
"    let buf = bufexists(a:termname)
"    if pane > 0
"        " pane is visible
"        if a:slider > 0
"            :exe pane . "wincmd c"
"        else
"            :exe "e #" 
"        endif
"    elseif buf > 0
"        " buffer is not in pane
"        if a:slider
"            split term://bash
"            resize 10
"            set ma
"        endif
"        :exe "buffer " . a:termname
"    else
"        " buffer is not loaded, create
"        if a:slider
"            split term://bash
"            resize 10
"            set ma
"        endif
"        :terminal
"        :exe "f " a:termname
"    endif
"endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" NERDtree """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Automatically close NERDtree when a file is opened
"let NERDTreeQuitOnOpen = 1
"" Automatically close buffer of deleted file
"let NERDTreeAutoDeleteBuffer = 1
"" Make pretty
"" TODO: Maybe delete?
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"
"" Show hidden files
"let NERDTreeShowHiden=1
"
"" Open up NERDtree if no files were specified
""autocmd StdinReadPre * let s:std_in=1
""autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
"" Open up NERDtree if a directory was specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | wincmd p | endif
"
"" Close vim if only NERDtree is open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
"" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction
"
"" TODO: Change these
""call NERDTreeHighlightFile('tmp', 'green', 'none', 'green', '#151515')
""call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
""call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
""call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
""call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
""call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
""call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
""call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" CoC """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 
"                             \ 'coc-prettier', 'coc-tsserver']
"" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup
"
"" Don't pass messages to |ins-completion-menu|.
"set shortmess+=c
"
"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
"if has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif
"
"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"
"" Make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  elseif (coc#rpc#ready())
"    call CocActionAsync('doHover')
"  else
"    execute '!' . &keywordprg . " " . expand('<cword>')
"  endif
"endfunction
"
"" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)
"
"" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Map function and class text objects
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
"" Remap <C-f> and <C-b> for scroll float windows/popups.
"if has('nvim-0.4.0') || has('patch-8.2.0750')
"  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add (Neo)Vim's native statusline support.
"" NOTE: Please see `:h coc-status` for integrations with external plugins that
"" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" Airline """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"scriptencoding utf-8

" This is a copy of the dark.vim theme, however it does not change colors in
" the different modes, so should bring some performance improvements because
" airline does not have to redefine highlighting groups after they have been
" setup once.

" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
"let g:airline#themes#dark_minimal#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
"let s:N1   = [ '#00005f' , '#dfff00' , 17  , 190 ]
"let s:N2   = [ '#ffffff' , '#444444' , 255 , 238 ]
"let s:N3   = [ '#9cffd3' , '#202020' , 85  , 234 ]
"let g:airline#themes#dark_minimal#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
"let g:airline#themes#dark_minimal#palette.accents = {
"      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
"      \ }
"
"let pal = g:airline#themes#dark_minimal#palette
"for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
"  " why doesn't this work?
"  " get E713: cannot use empty key for dictionary
"  "let pal.{item} = pal.normal
"  exe "let pal.".item." = pal.normal"
"  for suffix in ['_modified', '_paste']
"    exe "let pal.".item.suffix. " = pal.normal"
"  endfor
"endfor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""" nvim-tree """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 100 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute 'lua require("init2")'
