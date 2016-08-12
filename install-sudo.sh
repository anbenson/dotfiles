# install-sudo.sh
# Andrew Benson
# installs dotfiles that require sudo privileges

# checks in case of an existing file, then installs the given dotfile
# arg1: the dotfile to install
# arg2: the full path to install as
installdotfile() {
  SRCDIR=$(dirname $(readlink -f $0))
  if [ -h "$2" ]; then
    echo "$2 is already symlinked!"
  elif [ -f "$2" ] || [ -d "$2" ]; then
    echo "[WARN] $2 already exists. Please remove and rerun the script."
  else
    mkdir -p $(dirname $2)
    ln -s "$SRCDIR/$1" "$2"
    echo "$2 symlinked to $SRCDIR/$1."
  fi
}

installdotfile 70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf

echo -e "\nFinished."
echo "You may want to remove certain symlinks depending on your OS."
echo "You should open a new terminal or source .bashrc now."
