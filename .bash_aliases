# ls modifiers
alias ls='ls --color=auto'
alias l='ls'

# less
alias less='less -r'

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
alias c210='cd $DROPBOX/school/sophs/15210'

# grep aliases
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# gcc aliases
alias gcco='gcc -Wall -Werror -Wextra -std=c99 -pedantic'
alias gccd='gcco -DDEBUG -g'

# ssh/scp aliases
alias shadb='ssh adbenson@unix.andrew.cmu.edu'
alias shxdb='ssh -X adbenson@unix.andrew.cmu.edu'
alias sshark='ssh adbenson@shark.ics.cs.cmu.edu'
alias scpwww='scp -r ~/Dropbox/code/web/afs/* adbenson@unix.andrew.cmu.edu:~/www'

# programs
alias coin='rlwrap coin'
alias python='rlwrap python'
alias python3='rlwrap python3'
alias em='emacs'

# andrew web publishing
alias pubwww='curl "http://www.andrew.cmu.edu/cgi-bin/publish?FLAG=0&NAME=adbenson"'
