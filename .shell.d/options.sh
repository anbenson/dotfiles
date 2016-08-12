# options.sh
# Andrew Benson
# shell options

set -o notify       # When a job finishes, print the notification immediately
shopt -s nocaseglob # Use case-insensitive filename globbing
shopt -s histappend # Make bash append rather than overwrite the history on disk
shopt -s cdspell    # Ignore small typos when changing directories

