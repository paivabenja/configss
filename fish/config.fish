if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

abbr q 'exit'
abbr v 'nvim'
abbr l 'exa -lah'
abbr us 'setxkbmap us'
abbr latam 'setxkbmap latam'
abbr dev 'npm run dev'
abbr start 'npm start'
abbr chess 'cd ~/Code/chess ; npm run dev'
abbr mgdb 'systemctl start mongodb'

#   git
abbr ga 'git add '
abbr gc 'git commit -m '
abbr gp 'git push'

starship init fish | source
