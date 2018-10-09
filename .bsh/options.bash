option=(
histappend
cmdhist
extglob
dotglob
globstar
checkwinsize
autocd
cdspell
)
shopt -s ${option[@]} 2> /dev/null

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='rm *:git*:ls*:ll*:cd*:reboot:poweroff:*screenlayout*:'
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
HISTTIMEFORMAT="%s "
PROMPT_COMMAND='history -a'

export EDITOR=/usr/bin/vim

export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

export TERMINAL=urxvtc

export RANGER_LOAD_DEFAULT_RC=false

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
export JAVA_FONTS=/usr/share/fonts/TTF
