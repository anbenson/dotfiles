# colors.sh
# Andrew Benson
# color aliases

if checkexists tput "color aliasing"; then
  CRESET="$(tput sgr0)"
  CDEFAULT="$(tput setaf 9)"
  CBLACK="$(tput setaf 0)"
  CRED="$(tput setaf 1)"
  CGREEN="$(tput setaf 2)"
  CYELLOW="$(tput setaf 3)"
  CBLUE="$(tput setaf 4)"
  CMAGENTA="$(tput setaf 5)"
  CCYAN="$(tput setaf 6)"
  CWHITE="$(tput setaf 7)"
  ESCRESET="\[$CRESET\]"
  ESCDEFAULT="\[$CDEFAULT\]"
  ESCBLACK="\[$CBLACK\]"
  ESCRED="\[$CRED\]"
  ESCGREEN="\[$CGREEN\]"
  ESCYELLOW="\[$CYELLOW\]"
  ESCBLUE="\[$CBLUE\]"
  ESCMAGENTA="\[$CMAGENTA\]"
  ESCCYAN="\[$CCYAN\]"
  ESCWHITE="\[$CWHITE\]"
fi

