"|#####################|
"|##  PLUGINS  ########|
"|#####################|
call plug#begin('~/.vim/plugged')
Plug 'gkjgh/cobalt'
Plug 'tomasr/molokai'
Plug 'reedes/vim-colors-pencil'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript', { 'for': ['vue'] }
"Plug 'mxw/vim-jsx', { 'for': ['vue'] }
Plug 'jmerizia/vim-vue', { 'for': ['vue'] }
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

"|#####################|
"|##  BINDINGS  #######|
"|#####################|
command! RC e ~/.config/nvim/init.vim
command! W w
command! Q q
command! NT NERDTree
" smooth scrolling:
map <C-j> <C-e>j:sleep 1m<CR><C-e>j:sleep 1m<CR><C-e>j:sleep 1m<CR><C-e>j:sleep 1m<CR><C-e>j:sleep 1m<CR><C-e>j
map <C-k> <C-y>k:sleep 1m<CR><C-y>k:sleep 1m<CR><C-y>k:sleep 1m<CR><C-y>k:sleep 1m<CR><C-y>k:sleep 1m<CR><C-y>k
" end lines with semi colon quickly
map ;; $a;<Esc>
noremap Q @q
tnoremap <ESC> <C-\><C-N>
noremap <C-w>; <C-w>v<C-w>l:term<CR>

"|#####################|
"|##  BASIC  ##########|
"|#####################|
set number
set relativenumber
set cursorline
syntax on
set background=dark
set clipboard+=unnamedplus

"|#####################|
"|##  THEME  ##########|
"|#####################|
" colorscheme cobalt
" let g:airline_theme='cobalt'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " this is ignored now
set termguicolors

"|#####################|
"|##  FIXES  ##########|
"|#####################|
" fixes syntax off when pressing G on large files
autocmd FileType vue syntax sync fromstart
" allows for html, js, and css highlighting in .vue files
"autocmd BufRead,BufNewFile *.vue setlocal filetype=javascript.vue
" fix indentation glitches
filetype plugin indent on
set tabstop=1
set softtabstop=1
set shiftwidth=2
set expandtab

"|#####################|
"|##  Plugin Settings  |
"|#####################|
" fixes duplicate regex calls in vim-vue plugin
let g:vue_disable_pre_processors = 1
" turns indent guides on startup
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
