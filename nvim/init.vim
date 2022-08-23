

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
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'itchyny/lightline.vim',
  Plug 'morhetz/gruvbox',
  Plug 'preservim/nerdtree',
  Plug 'scrooloose/nerdcommenter',
  Plug 'sheerun/vim-polyglot',
  Plug 'ryanoasis/vim-devicons',
  Plug 'turbio/bracey.vim',
  Plug 'shinchu/lightline-gruvbox.vim',
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production'},
  "Plug 'tribela/vim-transparent'
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
let g:lightline.colorscheme = 'tokyonight'
set background=dark

let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='hard'

let g:tokyonight_style = 'night'
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_variables = 1

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
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

"    KEYBINDINGS

let mapleader=" "
map      <Leader>W :wq<CR>
map      <Leader>w :w<CR>
map      <Leader>q :q<CR>
map      <Leader>D :set background=dark<CR>
map      <Leader>L :set background=light<CR>
map      <Leader>p :Prettier<CR>

map      <Leader>e :Explore<cr>
map      <leader>tn :tabnew<cr>
map      <leader>t<leader> :tabnext
map      <leader>tm :tabmove
map      <leader>tc :tabclose<cr>
map      <leader>to :tabonly<cr>
map      <Leader>f :NERDTreeToggle<CR>

map      <Leader>vs :vsplit<cr>
map      <Leader>ss :split<cr>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>

"    24-BIT COLOR SUPPORT FOR VIM (ONEDARK)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme tokyonight
