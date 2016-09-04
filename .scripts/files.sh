# files.sh
# Andrew Benson
# creates file hierarchy in $HOME directory

# creates the given folder in $HOME, unless it already exists
createhomefolder() {
  if [ -d "$HOME/$1" ]; then
    echo "[WARN] Tried to create $HOME/$1, but it already exists!"
  else
    mkdir "$HOME/$1"
    echo "Created $HOME/$1."
  fi
}

if [ $UID == 0 ]; then
  echo "This script must be run as user!"
  exit 1
fi

createhomefolder bin
createhomefolder code
createhomefolder doc
createhomefolder games
createhomefolder incoming
createhomefolder junk
createhomefolder life
createhomefolder media
createhomefolder media/music
createhomefolder media/pictures
createhomefolder media/pictures/screenshots
createhomefolder media/videos
createhomefolder school
createhomefolder transfer
createhomefolder work

echo -e "\nFinished."

