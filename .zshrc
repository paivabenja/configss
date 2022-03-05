#         _                            _            
# _______| |__  _ __ ___   _ __   __ _(_)_   ____ _ 
#|_  / __| '_ \| '__/ __| | '_ \ / _` | \ \ / / _` |
# / /\__ \ | | | | | (__  | |_) | (_| | |\ V / (_| |
#/___|___/_| |_|_|  \___| | .__/ \__,_|_| \_/ \__,_|
#                         |_|                       
#                         

#ALIAS
alias v="nvim"
alias l="exa -lah"
alias cat="bat"

#PLUGINS
source ~/.zsh/plugins/sudo.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
