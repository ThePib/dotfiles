set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'dense-analysis/ale'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdtree'
Plug 'rodjek/vim-puppet'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

au BufRead,BufNewFile *.bazel,*.bzl set filetype=bzl
au Filetype markdown,plaintex,tex,text set textwidth=80 shiftwidth=2
au Filetype yml,yaml set shiftwidth=2 tabstop=2

let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

let g:deoplete#enable_at_startup = 1

let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

nnoremap <C-g> :NERDTreeToggle<CR>

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
