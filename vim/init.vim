"     _       _ _         _           
"    (_)_ __ (_) |___   _(_)_ __ ___  
"    | | '_ \| | __\ \ / / | '_ ` _ \ 
"    | | | | | | |_ \ V /| | | | | | |
"    |_|_| |_|_|\__(_)_/ |_|_| |_| |_|

"    PLUGINS
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim',
Plug 'joshdick/onedark.vim',
Plug 'preservim/nerdtree',
Plug 'scrooloose/nerdcommenter',

call plug#end()

"    COC.NVIM DEFAULT CONFIGS
source ~/.config/nvim/coc-config.nvim

"    VISUALS
set cursorline
set encoding=utf-8
syntax on
set number relativenumber
set numberwidth=5
set noshowmode
let g:lightline = {}
let g:lightline.colorscheme = 'onedark'
colorscheme onedark
let g:onedark_termcolors=16

"    UTILS
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
filetype indent on
set clipboard=unnamedplus
set mouse=a

"    KEYBINDINGS

let mapleader=" "
map <Leader>f :NERDTreeToggle<CR>
map <Leader>w :w<CR>
map <Leader>q :q<CR>
map <Leader>e :wq<CR>

"    24-BIT COLOR SUPPORT FOR VIM (ONEDARK)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif
