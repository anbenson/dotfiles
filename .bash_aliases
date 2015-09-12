# ls modifiers
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -l -A'

# less
alias less='less -r'

# grep aliases
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# cd aliases
alias back="cd $OLDPWD"
alias ..='cd ..'
if [ $ADB_OS = "cygwin" ]; then
  ANDREW="/cygdrive/c/Users/Andrew/home"
  DOWN="/cygdrive/c/Users/Andrew/Downloads"
else
  ANDREW="$HOME"
  DOWN="$ANDREW/Downloads"
fi

ONEDRIVE="$ANDREW/OneDrive"
DROPBOX="$ANDREW/Dropbox"
DUMP="$DROPBOX/dump"
PROJECTS="$ANDREW/projects"
GITSTUCO="$DROPBOX/code/web/afs/gitstuco"

# gcc aliases
alias gcco='gcc -Wall -Werror -Wextra -std=c99 -pedantic'
alias gccd='gcco -DDEBUG -g'

# ssh/scp aliases
alias shadb='ssh adbenson@unix.andrew.cmu.edu'
alias shxdb='ssh -Y adbenson@unix.andrew.cmu.edu'
alias sshark='ssh adbenson@shark.ics.cs.cmu.edu'
alias scpwww='scp -r $DROPBOX/code/web/afs/* adbenson@unix.andrew.cmu.edu:~/www'

# rlwrap programs
alias gdb='rlwrap gdb'
alias coin='rlwrap coin'
alias sml='rlwrap sml'
alias ocaml='rlwrap ocaml'
alias python='rlwrap python'
alias python3='rlwrap python3'

# programs
if [ $ADB_OS = "cygwin" ]; then
  alias chrome='chrome --incognito'
  alias canary='canary --incognito'
  alias ie="ie -private"
  alias open="cygstart"
  alias xcyg="xwin -multiwindow &"
fi

# andrew web publishing
alias pubwww="curl 'http://www.andrew.cmu.edu/cgi-bin/publish?FLAG=0&NAME=adbenson'"
