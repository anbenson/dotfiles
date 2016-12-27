# history.sh
# Andrew Benson
# history configuration

# this directory will be used for all history files of any kind
HISTDIR="$HOME/.history"

# if .history directory doesn't exist, create it
if [ ! -d $HISTDIR ]; then
  mkdir -p $HISTDIR
fi

# bash history
export HISTFILE="$HISTDIR/.bash_history"
export HISTSIZE=500
export HISTTIMEFORMAT="%-m/%-d %-I:%M %p  "
# Don't put duplicate consecutive lines or space-prefixed lines into the history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignorespace:ignoredups
# write previous line to history at prompt
export PROMPT_COMMAND="history -a"

# less history
export LESSHISTFILE="$HISTDIR/.lesshst"

# rlwrap history
export RLWRAP_HOME="$HISTDIR"
