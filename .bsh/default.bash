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
    local PS1_SET_USER="${COLOR_L_GREEN}\u${COLOR_DEFAULT}"
    local PS1_SET_HOST="${COLOR_DARK_GRAY}\h${COLOR_DEFAULT}"
    local PS1_SET_PWD="${COLOR_L_BLUE}\w${COLOR_DEFAULT}"
    local PS1_SET_SYMBOL="${COLOR_L_GREEN}\$${COLOR_DEFAULT}"

    local PS1_LN_1=""
    local PS1_LN_2="${PS1_SET_HOST} ${PS1_SET_PWD} "
    local PS1_GIT="${COLOR_YELLOW}\$(__git_ps1 '%s')${COLOR_DEFAULT}"

    echo "${PS1_LN_1}\n${PS1_LN_2}${PS1_GIT}\n "
}

PS1=$(set_prompt)
