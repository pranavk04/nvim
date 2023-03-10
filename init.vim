" init file for neovim.

" stuff for filetree
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" sensible defaults
set nu
set rnu
syntax on
set shellslash
set ignorecase 
inoremap jj <esc>
let mapleader = " "

" lsp windows
set cmdheight=1
set laststatus=2
set scrolloff=10

" tabs!
set tabstop=2
set shiftwidth=2
set smarttab
set ai 
set si

" color!
set t_Co=256

" kitty stuff
runtime ./kitty.vim
" initialize packages
runtime ./plug.vim
lua require('plug')

" initialize language servers
lua require('lsp')

" colorscheme
colorscheme catppuccin

" keybinds

" trouble config
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>


" vimtex 
filetype plugin indent on
let g:vimtex_view_method = 'open -a Skim'
" glow
nnoremap <leader>p :Glow<cr>

" dashboard
let g:dashboard_default_executive = 'telescope'

"filetree 
nnoremap <leader>f <cmd>NvimTreeToggle<cr>

" comments
vmap gc <Plug>ToggleCommaround

" nvim-window config
map <silent> <leader>w :lua require('nvim-window').pick()<cr>

" bufferline 
nnoremap <silent>[b :BufferLineCycleNext<cr>
nnoremap <silent>b] :BufferLineCyclePrev<cr>