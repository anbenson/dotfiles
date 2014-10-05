# ls modifiers
alias l='ls --color=auto'
alias ls='ls --color=auto'

# cd aliases
alias cdrop='cd ~/Dropbox'
alias cdown='cd ~/Downloads'
alias cdump='cd ~/Dropbox/dump'
alias ccode='cd ~/Dropbox/code'
alias cweb='cd ~/Dropbox/code/web'
alias c122='cd ~/Dropbox/school/freshf/15122'
alias c150='cd ~/Dropbox/school/freshs/15150'
alias c213='cd ~/Dropbox/school/freshs/15213'

# grep aliases
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

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
