# options.sh
# Andrew Benson
# shell options

set -o notify       # When a job finishes, print the notification immediately
shopt -s nocaseglob  # Use case-insensitive filename globbing
shopt -s histappend  # Make bash append instead of overwrite the history on disk
shopt -s cdspell     # Ignore small typos when changing directories
shopt -s autocd      # Entering a directory name is interpreted as cd'ing to it
shopt -s cdable_vars # cd interpretes non-directory names as shell variables

