

"     _       _ _         _           
"    (_)_ __ (_) |___   _(_)_ __ ___  
"    | | '_ \| | __\ \ / / | '_ ` _ \ 
"    | | | | | | |_ \ V /| | | | | | |
"    |_|_| |_|_|\__(_)_/ |_|_| |_| |_|

"    PLUGINS
call plug#begin()

 Plug 'alvan/vim-closetag',
 Plug 'tpope/vim-surround',
 Plug 'mhinz/vim-signify',
 Plug 'jiangmiao/auto-pairs',

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'folke/tokyonight.nvim',
 Plug 'itchyny/lightline.vim',
 Plug 'morhetz/gruvbox',
 Plug 'preservim/nerdtree',
 Plug 'scrooloose/nerdcommenter',
 Plug 'sheerun/vim-polyglot',
 Plug 'ryanoasis/vim-devicons',
 Plug 'turbio/bracey.vim',
 Plug 'shinchu/lightline-gruvbox.vim',
 Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': ['javascript', 'css', 'html']}
" Plug 'tribela/vim-transparent',

call plug#end()

"    COC.NVIM DEFAULT CONFIGS
source ~/.config/nvim/coc-config.nvim

"    VISUALS
set encoding=utf-8
syntax on
set number relativenumber
set numberwidth=5
set noshowmode
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
colorscheme gruvbox
set background=dark

"    UTILS
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
filetype indent on
set clipboard=unnamedplus
set mouse=a
set ignorecase
set hlsearch
set incsearch
set smartcase

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"    KEYBINDINGS

let mapleader=" "
map <Leader>f :NERDTreeToggle<CR>
map <Leader>w :w<CR>
map <Leader>D :set background=dark<CR>
map <Leader>L :set background=light<CR>
map <Leader>q :q<CR>
map <Leader>e :wq<CR>
map <Leader>ñ :Bracey<CR>
map <Leader>p :Prettier<CR>
nnoremap <Leader>s <Plug>VSurround

"    24-BIT COLOR SUPPORT FOR VIM (ONEDARK)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif
