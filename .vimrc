syntax on
set tabstop=2
set relativenumber
set number

set shiftwidth=2
set expandtab

set cursorline

" set background=dark

color monokai

let g:javascript_plugin_flow = 1

command! NT NERDTree

"function! SmoothScroll(up)
"    if a:up
"        let scrollaction="^Y"
"    else
"        let scrollaction="^E"
"    endif
"    exec "normal " . scrollaction
"    redraw
"    let counter=1
"    while counter<&scroll
"        let counter+=1
"        sleep 10m
"        redraw
"        exec "normal " . scrollaction
"    endwhile
"endfunction
"
"nnoremap <C-U> :call SmoothScroll(1)<Enter>
"nnoremap <C-D> :call SmoothScroll(0)<Enter>
"inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
"inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

" This is so nice, you have no idea!!!
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" call plug#begin('~/.vim/plugged')

" Plug 'pangloss/vim-javascript'

" call plug#end()

" VUNDLE SETUP

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
   
" plugins...
     
Plugin 'jiangmiao/auto-pairs'

" Plugin 'pangloss/vim-javascript'

Plugin 'jelera/vim-javascript-syntax'

" Plugin 'flowtype/vim-flow'

Plugin 'scrooloose/nerdtree'

Plugin 'mxw/vim-jsx'

Plugin 'vim-scripts/JavaScript-Indent'

" Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on

" set guifont=Monospace\ 10

let g:jsx_ext_required = 0

autocmd BufWinEnter * NERDTreeMirror
