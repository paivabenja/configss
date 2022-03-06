"           _             _                             _ 
"     _ __ | |_   _  __ _(_)_ __  ___    __ _ _ __   __| |
"    | '_ \| | | | |/ _` | | '_ \/ __|  / _` | '_ \ / _` |
"    | |_) | | |_| | (_| | | | | \__ \ | (_| | | | | (_| |
"    | .__/|_|\__,_|\__, |_|_| |_|___/  \__,_|_| |_|\__,_|
"    |_|            |___/                                 
"                                       
"     ___  ___  _   _ _ __ ___ ___  ___ 
"    / __|/ _ \| | | | '__/ __/ _ \/ __|
"    \__ \ (_) | |_| | | | (_|  __/\__ \
"    |___/\___/ \__,_|_|  \___\___||___/
"                                       

"    PLUGINS
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox',
Plug 'itchyny/lightline.vim',
Plug 'shinchu/lightline-gruvbox.vim',
Plug 'preservim/nerdtree',
Plug 'scrooloose/nerdcommenter',

call plug#end()

"    SETTINGS
source ~/.config/nvim/settings.vim

"    COC.NVIM DEFAULT CONFIGS
source ~/.config/nvim/coc-config.nvim

"    KEYBINDINGS
source ~/.config/nvim/keybindings.vim
