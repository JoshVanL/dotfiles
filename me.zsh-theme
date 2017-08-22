BLACK=$(tput setaf 255)
BLACK2=$(tput setaf 251)
GITCOL=$(tput setaf 146)
PURPLE=$(tput setaf 212)
PURPLE2=$(tput setaf 211)

RPS1="${return_code}"

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})
"

precmd() {echo "${BLACK2}$(whoami)@$(hostname)" ${PURPLE2}:: ${PURPLE}"${PWD/#$HOME/~}" $(git_prompt_info)}
PROMPT='%{${BLACK}%}$%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_PREFIX="${GITCOL}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› $reset_color"
