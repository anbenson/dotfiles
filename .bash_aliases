# ls modifiers
alias l='ls --color=auto'
alias ls='ls --color=auto'

# cd aliases
DROPBOX=~/Dropbox

alias cdown='cd ~/Downloads'
alias cdrop='cd $DROPBOX'
alias cdump='cd $DROPBOX/dump'
alias ccode='cd $DROPBOX/code/'
alias cweb='cd $DROPBOX/code/web'
alias csophf='cd $DROPBOX/school/sophf'
alias c122='cd $DROPBOX/school/freshf/15122'
alias c150='cd $DROPBOX/school/freshs/15150'
alias c213='cd $DROPBOX/school/freshs/15213'
alias c251='cd $DROPBOX/school/sophf/15251'

# grep aliases
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# gcc aliases
GCC122='gcc -Wall -Werror -Wextra -std=c99 -pedantic'
alias gccd='$GCC122 -DDEBUG -g'
alias gcco='$GCC122'

# ssh/scp aliases
alias shadb='ssh adbenson@linux.andrew.cmu.edu'
alias shxdb='ssh -X adbenson@linux.andrew.cmu.edu'
alias sshark='ssh adbenson@shark.ics.cs.cmu.edu'
alias scpwww='scp -r ~/Dropbox/code/web/afs/* adbenson@linux.andrew.cmu.edu:~/www'

# programs
alias coin='rlwrap coin'
alias python='rlwrap python'
alias python3='rlwrap python3'

# andrew web publishing
alias pubwww='curl "http://www.andrew.cmu.edu/cgi-bin/publish?FLAG=0&NAME=adbenson"'
