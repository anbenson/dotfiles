# prompt.sh
# Andrew Benson
# customized prompt

PS1_WINDOW_TITLE="\e]0;\w\a"
PS1_RETVALUE="\$(if [ \$? = 0 ]; then echo \"${ESCGREEN}:)${ESCRESET}\"; else echo \"${ESCRED}:(${ESCRESET}\"; fi)"
PS1_USER="${ESCYELLOW}\u@\h${ESCRESET}"
PS1_CWD="${ESCBLUE}\w${ESCRESET}"
PS1_TIME="${ESCRED}\@${ESCRESET}"
if checkexists __git_ps1 "git prompt integration"; then
  PS1_GIT="${ESCCYAN}\$(__git_ps1)${ESCRESET}"
else
  PS1_GIT=""
fi
PS1_END="${ESCGREEN}\$${ESCRESET}"
PS1="${PS1_WINDOW_TITLE}\n${PS1_RETVALUE} ${PS1_USER} ${PS1_CWD}\n${PS1_TIME}${PS1_GIT} ${PS1_END} "

