set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rodjek/vim-puppet'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

au BufRead,BufNewFile *.bazel,*.bzl set filetype=bzl

set clipboard=unnamedplus

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

let g:terraform_align = 1
let g:terraform_fmt_on_save = 1
