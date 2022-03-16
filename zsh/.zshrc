#             _                      _                             _     
#     _______| |__  _ __ ___    ___ | |__  _ __ ___  _   _ _______| |__  
#    |_  / __| '_ \| '__/ __|  / _ \| '_ \| '_ ` _ \| | | |_  / __| '_ \ 
#     / /\__ \ | | | | | (__  | (_) | | | | | | | | | |_| |/ /\__ \ | | |
#    /___|___/_| |_|_|  \___|  \___/|_| |_|_| |_| |_|\__, /___|___/_| |_|
#                                                    |___/               


#    THEME
ZSH_THEME="wezm" # set by `omz`

#    UPDATES
zstyle ':omz:update' mode reminder

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

#   PLUGINS
plugins=(
    git 
    sudo
)

#   IDK
source $HOME/.oh-my-zsh/oh-my-zsh.sh

#   ALIASES
alias v="nvim"
alias l="exa --icons --grid -a"
alias cat="bat"
alias ls="exa --icons --grid"

figlet oh-my-zsh
