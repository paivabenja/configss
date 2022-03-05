"             _       _           
" _ __   __ _(_)_   _(_)_ __ ___  
"| '_ \ / _` | \ \ / / | '_ ` _ \ 
"| |_) | (_| | |\ V /| | | | | | |
"| .__/ \__,_|_| \_/ |_|_| |_| |_|
"|_|                              
"

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox',
Plug 'itchyny/lightline.vim',
Plug 'shinchu/lightline-gruvbox.vim',
Plug 'preservim/nerdtree',
call plug#end()

set shiftwidth=4
set noshowmode
set tabstop=4
set expandtab
set autoindent
filetype indent on
let mapleader=" "
set encoding=utf-8
syntax on
set number relativenumber
set numberwidth=3
set clipboard=unnamedplus
let g:airline_theme='base16_gruvbox_dark_hard'
set background=dark
set mouse=a
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
colorscheme gruvbox
" config default del github de coc.nvim
source ~/.config/nvim/coc-config.nvim

map <Leader>f :NERDTreeToggle<CR>
