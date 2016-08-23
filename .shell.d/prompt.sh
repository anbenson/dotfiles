# prompt.sh
# Andrew Benson
# customized prompt

PS1_WINDOW_TITLE="\e]0;\w\a"
PS1_RETVALUE="\$(if [ \$? = 0 ]; then echo \"${ESCGREEN}:)${ESCRESET}\"; else echo \"${ESCRED}:(${ESCRESET}\"; fi)"
PS1_USER="${ESCYELLOW}\u@\h${ESCRESET}"
PS1_CWD="${ESCBLUE}\w${ESCRESET}"
PS1_TIME="${ESCRED}\@${ESCRESET}"
if checkexists __git_ps1 "git prompt integration"; then
  # xargs trims the leading space
  PS1_GIT="\$(BRANCH=\$(__git_ps1 | xargs); if [ -n \"\$BRANCH\" ]; then echo \"${ESCCYAN}\${BRANCH}${ESCRESET} \"; else echo \"\"; fi)"
else
  PS1_GIT=""
fi
PS1_VENV="\$(if [ -n \"\$VIRTUAL_ENV\" ]; then echo \"${ESCMAGENTA}(pyvenv) ${ESCRESET}\"; else echo \"\"; fi)"
PS1_END="${ESCGREEN}\$${ESCRESET}"
PS1="${PS1_WINDOW_TITLE}\n${PS1_RETVALUE} ${PS1_USER} ${PS1_CWD}\n${PS1_TIME} ${PS1_GIT}${PS1_VENV}${PS1_END} "

