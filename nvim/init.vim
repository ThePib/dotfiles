set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set number
set relativenumber
set hlsearch

set history=200
set ruler
set scrolloff=10
set undolevels=1000

set colorcolumn=81,91,101
highlight ColorColumn ctermbg=52

let g:airline_powerline_fonts = 1
