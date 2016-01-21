# filesystem stuff

alias ll='ls -lh'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cs='du -hsx * | sort -rh | head -n 10'
alias mkdir='mkdir -pv'

# git stuff
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gs='git status'
alias gd='git diff HEAD '
alias gc='git checkout '
alias gr='git checkout -- '
alias gp='git pull --rebase'
alias gob='git checkout -b '


# utility stuff

alias fm='thunar .'
alias sfm='sudo thunar .'
alias i='python -m SimpleHTTPServer'
alias py3='python3'
alias sudo='sudo '
alias fuck='sudo $(history -p \!\!)'
alias a='atom .'
alias s='subl .'
alias ports='netstat -tulanp'
alias wget='wget -c'

# PHP stuff

alias artisan='php artisan'
alias cc='php artisan cache:clear'
alias cda='composer dump-autoload'


# grep

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
