alias vi='vim'
alias vim='vim'

# config
alias i3config='vim ~/.config/i3/config'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias reload='source ~/.bashrc'
alias dev='cd ~/dev'

# filesystem stuff

alias ll='ls -lh --full-time --time-style=long-iso'
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

alias k='kanban'
alias fm='thunar .'
alias sfm='sudo thunar .'
#alias i='python -m SimpleHTTPServer'
alias pi='php -S localhost:8765'
alias py3='python3'
alias sudo='sudo '
alias hosts='sudo vim /etc/hosts'
alias fuck='sudo $(history -p \!\!)'
alias a='atom .'
alias s='subl .'
alias ports='netstat -tulanp'
alias wget='wget -c'
alias cal='cal -m'
# alias cat='bat'

# PHP stuff

alias artisan='php artisan'
alias cons='bin/console'
alias cda='composer dump-autoload'
alias pu='./vendor/bin/phpunit'

# grep

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# docker

alias d-up='docker-compose up -d'
alias d-stop='docker-compose stop'
alias d-down='docker-compose down'
alias d-bash='docker-compose exec web bash'
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-rm-all='docker rm $(docker ps -a -q)'
alias dockdel='docker rm $(docker ps -a -q)'
alias dockrem='docker rmi $(docker images -q)'

# heroku
alias deployheroku='git push heroku master'
