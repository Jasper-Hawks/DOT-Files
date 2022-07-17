let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'mikewest/vimroom'
Plug 'rhysd/vim-grammarous'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
"Plug 'matze/vim-move'
call plug#end()

" Requirements for certain Plugins
"
" VIMWIKI
set nocompatible
filetype plugin on
syntax on

" VIM CUSTOMIZATION
set noswapfile
"set spell spelllang=en_us
filetype plugin indent on

let g:grammarous#use_vim_spelllang=1

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

set number relativenumber
