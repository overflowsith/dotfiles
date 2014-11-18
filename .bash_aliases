# filesystem stuff

alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cs='du -hsx * | sort -rh | head -n 10'


# git stuff

alias gs='git status'
alias ga='git add .'
alias gd='git diff HEAD '
alias gc='git checkout -- '
alias gp='git pull'
alias gpa='git pull && cd app/core && git pull && ... && grunt'


# utility stuff

alias fm='thunar .'
alias sfm='sudo thunar .'
alias i='python -m SimpleHTTPServer'
alias py3='python3'
alias sudo='sudo '
alias fuck='sudo $(history -p \!\!)'


# PHP stuff

alias artisan='php artisan'
alias cc='php artisan cache:clear'
alias cda='composer dump-autoload'

