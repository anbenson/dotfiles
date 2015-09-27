# .bashrc
# Andrew Benson
# my bashrc config file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# color aliases
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

# determine current OS if first run
if [ ! -f ~/.adb_os ]; then
  echo "Looks like this is your first time using bash on this computer."
  read -p "What OS are you on? [cygwin(1), linux(2), or ask next time]: " resp
  case $resp in
    1|cygwin ) echo "export ADB_OS=\"cygwin\"" > ~/.adb_os;;
    2|linux  ) echo "export ADB_OS=\"linux\"" > ~/.adb_os;;
  esac
fi

# load variables
source ~/.adb_os       # load current OS environment variable
source ~/.bash_aliases # load aliases
export EDITOR="vim"    # preferred editor is vim
export DISPLAY=:0.0    # point X servers to localhost:0.0
unset SMLNJ_HOME       # use Cygwin SML, not Windows SML
# add shortcut directories to PATH
export PATH=~/.shortcuts:~/.shortcuts/c0:~/.shortcuts/sml:~/.shortcuts/java:$PATH

# Shell Options
set -o notify       # When a job finishes, print the notification immediately
shopt -s nocaseglob # Use case-insensitive filename globbing
shopt -s histappend # Make bash append rather than overwrite the history on disk
shopt -s cdspell    # Ignore small typos when changing directories

# Completion Options
if [ -f ~/.scripts/git-completion.bash ]; then
  . ~/.scripts/git-completion.bash # allow tab-completion for git commands
fi

# History Options
# Don't put duplicate consecutive lines or space-prefixed lines into the history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignorespace:ignoredups
export PROMPT_COMMAND="history -a" # write previous line to history at prompt

# colorize files and directories
eval $(dircolors ~/.dir_colors)

# set prompt and window title
source ~/.scripts/git-prompt.sh
PS1_WINDOW_TITLE="\e]0;\w\a"
PS1_RETVALUE="\$(if [[ \$? == 0 ]]; then echo \"${CGREEN}:)${CRESET}\"; else echo \"${CRED}:(${CRESET}\"; fi)"
PS1_USER="${CYELLOW}\u@\h${CRESET}"
PS1_CWD="${CBLUE}\w${CRESET}"
PS1_TIME="${CRED}\@${CRESET}"
PS1_GIT='${CCYAN}$(__git_ps1)${CRESET}'
PS1_END="${CGREEN}\$${CRESET}"
PS1="${PS1_WINDOW_TITLE}\n${PS1_RETVALUE} ${PS1_USER} ${PS1_CWD}\n${PS1_TIME}${PS1_GIT}${PS1_END} "

# greeting
echo "Today's date is $(date "+%B %d, %Y")".
