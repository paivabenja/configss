export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    sudo
)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias l="exa --icons --grid -a"
alias cat="bat"
alias ls="exa --icons --grid"
alias pc="sudo pacman"
alias qq="exit"
