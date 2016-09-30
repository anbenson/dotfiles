# files.sh
# Andrew Benson
# creates file hierarchy in $HOME directory

# creates the given folder in $HOME, unless it already exists
# arg1: the folder to create
createhomefolder() {
  if [ -d "$HOME/$1" ]; then
    echo "[WARN] Tried to create $HOME/$1, but it already exists!"
  else
    mkdir "$HOME/$1"
    echo "Created $HOME/$1."
  fi
}

# creates the given folder as a softlink to the other folder given in Dropbox
# arg1: the folder to create as a softlink in the home directory
# arg2: the folder to link to in Dropbox
DROPBOX=$HOME/other/Dropbox
linkhometodropbox() {
  if [ ! -d "$DROPBOX" ]; then
    echo "Couldn't find the Dropbox folder! $1 was not linked to $2 in Dropbox."
  elif [ -h "$HOME/$1" ]; then
    echo "$HOME/$1 already exists as a symlink!"
  elif [ -f "$HOME/$1" ] || [ -d "$HOME/$1" ]; then
    echo "[WARN] $HOME/$1 already exists. Please remove and rerun the script."
  else
    ln -s "$DROPBOX/$2" "$HOME/$1"
    echo "$HOME/$1 symlinked to $DROPBOX/$2."
  fi
}

if [ $UID == 0 ]; then
  echo "This script must be run as user!"
  exit 1
fi

createhomefolder  bin
createhomefolder  code
createhomefolder  doc
createhomefolder  games
createhomefolder  incoming
linkhometodropbox junk                       junk
linkhometodropbox life                       manage
createhomefolder  media
createhomefolder  media/music
createhomefolder  media/pictures
linkhometodropbox media/pictures/screenshots screenshots
createhomefolder  media/videos
createhomefolder  other
createhomefolder  other/desktop
createhomefolder  other/templates
createhomefolder  other/public
linkhometodropbox school                     school
linkhometodropbox transfer                   transfer
linkhometodropbox work                       jobs

echo -e "\nFinished."

