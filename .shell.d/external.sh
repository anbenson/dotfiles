# external.sh
# Andrew Benson
# downloads and runs scripts that originated online

GITCOMPLETION="git-completion.bash"
GITPROMPT="git-prompt.sh"
DIRCOLORS="dircolors.ansi-dark"

GITCOMPLETIONURL="https://raw.githubusercontent.com/git/git/master/contrib/completion/$GITCOMPLETION"
GITPROMPTURL="https://raw.githubusercontent.com/git/git/master/contrib/completion/$GITPROMPT"
DIRCOLORSURL="https://raw.githubusercontent.com/seebi/dircolors-solarized/master/$DIRCOLORS"

MISSINGFILES=""
if [ -f "$SHELLD/$GITCOMPLETION" ]; then
  source "$SHELLD/$GITCOMPLETION"
else
  MISSINGFILES="$MISSINGFILES$GITCOMPLETION "
fi

if [ -f "$SHELLD/$GITPROMPT" ]; then
  source "$SHELLD/$GITPROMPT"
else
  MISSINGFILES="$MISSINGFILES$GITPROMPT "
fi

if [ -f "$SHELLD/$DIRCOLORS" ]; then
  if checkexists dircolors "configuring ls colors"; then
    eval $(dircolors "$SHELLD/$DIRCOLORS")
  fi
else
  MISSINGFILES="$MISSINGFILES$DIRCOLORS "
fi

if [ -n "$MISSINGFILES" ]; then
  download-external() {
    if checkexists wget "downloading external scripts"; then
      if [ ! -f "$SHELLD/$GITCOMPLETION" ]; then
        echo -e "Downloading $GITCOMPLETION...\n"
        wget $GITCOMPLETIONURL -P $SHELLD
      fi
      if [ ! -f "$SHELLD/$GITPROMPT" ]; then
        echo -e "Downloading $GITPROMPT...\n"
        wget $GITPROMPTURL -P $SHELLD
      fi
      if [ ! -f "$SHELLD/$DIRCOLORS" ]; then
        echo -e "Downloading $DIRCOLORS...\n"
        wget $DIRCOLORSURL -P $SHELLD
      fi
    fi
  }
  echo "[WARN] Missing the following files! $MISSINGFILES"
  echo -e "^Run 'download-external' anytime in this session to download them.\n"
fi
