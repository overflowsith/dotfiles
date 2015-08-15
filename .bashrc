function set_prompt()
{
    local COLOR_DEFAULT='\[\e[0m\]'
    local COLOR_BLACK='\[\e[0;30m\]'
    local COLOR_BLUE='\[\e[0;34m\]'
    local COLOR_GREEN='\[\e[0;32m\]'
    local COLOR_CYAN='\[\e[0;36m\]'
    local COLOR_RED='\[\e[0;31m\]'
    local COLOR_PURPLE='\[\e[0;35m\]'
    local COLOR_BROWN='\[\e[0;33m\]'
    local COLOR_GRAY='\[\e[0;37m\]'
    local COLOR_DARK_GRAY='\[\e[1;30m\]'
    local COLOR_L_BLUE='\[\e[1;34m\]'
    local COLOR_L_GREEN='\[\e[1;32m\]'
    local COLOR_L_CYAN='\[\e[1;36m\]'
    local COLOR_L_RED='\[\e[1;31m\]'
    local COLOR_L_PURPLE='\[\e[1;35m\]'
    local COLOR_YELLOW='\[\e[1;33m\]'
    local COLOR_WHITE='\[\e[1;37m\]'

    local PS1_SET_TITLE='\[\e]0;\w\a\]'

    local PS1_SET_TIME="${COLOR_DEFAULT}\d \t"
    local PS1_SET_RET_CODE="${COLOR_L_RED}(\$?)${COLOR_DEFAULT}"
    local PS1_SET_USER="${COLOR_L_GREEN}\u@\h${COLOR_DEFAULT}"
    local PS1_SET_HOST="${COLOR_L_GREEN}\h${COLOR_DEFAULT}"
    local PS1_SET_PWD="${COLOR_L_GREEN}\w${COLOR_DEFAULT}"
    local PS1_SET_SYMBOL="${COLOR_L_GREEN}\$${COLOR_DEFAULT}"

    local PS1_LN_1=""
    local PS1_LN_2="${PS1_SET_HOST} ${PS1_SET_PWD} "
    local PS1_GIT="${COLOR_YELLOW}\$(__git_ps1 '%s')${COLOR_DEFAULT}"

    echo "${PS1_LN_1}\n${PS1_LN_2}${PS1_GIT}\n${PS1_SET_SYMBOL} "
}

function google()
{
    x-www-browser "https://www.google.com/search?q=$1";
}

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL="ignorespace:ereasedups"

# append to the history file, don't overwrite it
shopt -s histappend

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion.d/git-prompt
fi

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1=$(set_prompt)
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


export SVN_EDITOR=vim

