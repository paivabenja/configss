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
  Plug 'preservim/nerdtree',
  Plug 'nvim-lualine/lualine.nvim',
  Plug 'scrooloose/nerdcommenter',
  Plug 'sheerun/vim-polyglot',
  Plug 'turbio/bracey.vim',
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production'},
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'},
  "Plug 'tribela/vim-transparent'
  
  """"     THEMES 
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'ryanoasis/vim-devicons',
  Plug 'sainnhe/everforest',
  Plug 'morhetz/gruvbox',
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'phanviet/vim-monokai-pro',
  Plug 'rose-pine/neovim',
  Plug 'jacoborus/tender.vim',
  Plug 'pineapplegiant/spaceduck', { 'branch': 'main' },
  Plug 'artanikin/vim-synthwave84',
  Plug 'sainnhe/sonokai',
call plug#end()

"    COC.NVIM DEFAULT CONFIGS
source ~/.config/nvim/coc-config.vim

"    VISUALS
set encoding=utf-8
syntax on
set number relativenumber
set numberwidth=5
set noshowmode
set background=dark
set cursorline

let g:gruvbox_contrast_light='hard'

let g:tokyonight_style = 'night'
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_variables = 1

"    UTILS
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
filetype indent on
set clipboard+=unnamedplus
set mouse=a
set ignorecase
set hlsearch
set incsearch
set smartcase

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END


"    KEYBINDINGS

let mapleader=" "

map <f1> y
"editor
map      <Leader>W     :wq<CR>
map      <Leader>w     :w<CR>
map      qq     :q<CR>
imap     ,,            <Esc>

"change colors
map      <Leader>D     :set background=dark<CR>
map      <Leader>L     :set background=light<CR>

" prettier
map      <Leader>p     :Prettier<CR>

" file explorer
map      <Leader>e     :Explore<cr>

" tabs
map      tn    :tabnew<cr>
map      tp    :tabprevious<cr>
map      tt    :tabnext<cr>
map      tm    :tabmove<cr>
map      tc    :tabclose<cr>
map      to    :tabonly<cr>

" nerdtree
map      <Leader>f     :NERDTreeToggle<CR>
map      <leader><cr>  <cr><c-w>h:q<cr>

" terminal
map      <leader>th    :botright new <Bar> :terminal<cr> :resize -10<cr>
tmap     <Esc>         <C-\><C-n>

"windows
map      <Leader>vs    :vsplit<cr>
map      <Leader>ss    :split<cr>


map      <A-h>     <C-W><C-H>
map      <A-j>     <C-W><C-J>
map      <A-k>     <C-W><C-K>
map      <A-l>     <C-W><C-L>

"24-BIT COLOR SUPPORT FOR VIM (ONEDARK)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme sonokai
