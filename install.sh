# install.sh
# Andrew Benson
# installs dotfiles

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

installdotfile .atom             $HOME/.atom
installdotfile .bashrc           $HOME/.bashrc
installdotfile .config/i3/config $HOME/.config/i3/config
installdotfile .emacs            $HOME/.emacs
installdotfile .gitconfig        $HOME/.gitconfig
installdotfile .gitignore_global $HOME/.gitignore_global
installdotfile .minttyrc         $HOME/.minttyrc
installdotfile .scripts          $HOME/bin/scripts
installdotfile .shell.d          $HOME/.shell.d
installdotfile .tmux.conf        $HOME/.tmux.conf
installdotfile .vimrc            $HOME/.vimrc
installdotfile .xinitrc          $HOME/.xinitrc
installdotfile .Xmodmap          $HOME/.Xmodmap
installdotfile .Xresources       $HOME/.Xresources
installdotfile .ssh/config       $HOME/.ssh/config

echo -e "\nFinished."
echo "You may want to remove certain symlinks depending on your OS."
echo "You should open a new terminal or source .bashrc now."
