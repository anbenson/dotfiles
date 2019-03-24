# .bashrc
# Andrew Benson
# top-level bash configuration

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

SHELLD="$HOME/.shell.d"
if [ -d "$SHELLD" ]; then
  source "$SHELLD/util.sh"
  source "$SHELLD/vars.sh"
  source "$SHELLD/colors.sh"
  source "$SHELLD/external.sh"
  source "$SHELLD/aliases.sh"
  source "$SHELLD/history.sh"
  source "$SHELLD/options.sh"
  source "$SHELLD/functions.sh"
  source "$SHELLD/prompt.sh"
else
  echo -e "[WARN] Missing shell scripts directory at $SHELLD! Skipping bash configuration...\n"
fi

# greeting
echo "Today's date is $(date "+%B %d, %Y")".
