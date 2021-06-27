" Plugins start here 

call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
"Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'matze/vim-move'
call plug#end()

" Executing Plugins
colorscheme wal

" Requirements for certain Plugins
"
" VIMWIKI
set nocompatible
filetype plugin on
syntax on

" VIM CUSTOMIZATION
set noswapfile

set number relativenumber	
set spell spelllang=en_us
filetype plugin indent on

" TAB SETTINGS
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent

set guicursor=
set hidden
set noerrorbells

set undodir=~/.vim/undos
set undofile

set scrolloff=8
set noshowmode
set signcolumn=yes

let g:move_key_modifier = 'C'

let g:goyo_width = 50
let g:goyo_margin_top = 10
let g:goyo_margin_bottom = 10

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

