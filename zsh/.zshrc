# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias l="exa --icons --grid -a"
alias cat="batcat"
alias ls="exa --icons --grid"
alias apti="sudo apt install"
alias qq="exit"
alias mc="sudo java -jar /home/paiva/minecraft/TLauncher-2.841.jar && exit"
alias dc="pacmd load-module module-alsa-source source_properties=device.description=DroidCam device=hw:Loopback,1,0 && exit"
alias vc="nvim ~/.config/nvim/"
alias kc="nvim ~/.config/kitty"
alias zc="nvim ~/.zshrc"

# zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
