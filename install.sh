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

if [ $UID == 0 ]; then
  echo "This script must be run as user!"
  exit 1
fi

installdotfile .atom/config.cson            $HOME/.atom/config.cson
installdotfile .atom/keymap.cson            $HOME/.atom/keymap.cson
installdotfile .bashrc                      $HOME/.bashrc
installdotfile .config/i3/config            $HOME/.config/i3/config
installdotfile .config/i3status/config      $HOME/.config/i3status/config
installdotfile .emacs                       $HOME/.emacs
installdotfile .gitconfig                   $HOME/.gitconfig
installdotfile .gitignore_global            $HOME/.gitignore_global
installdotfile .config/mintty/config        $HOME/.config/mintty/config
installdotfile .scripts                     $HOME/bin/scripts
installdotfile .shell.d                     $HOME/.shell.d
installdotfile .tmux.conf                   $HOME/.tmux.conf
installdotfile .vimrc                       $HOME/.vimrc
installdotfile .config/termite/config       $HOME/.config/termite/config
installdotfile .X.d/.xinitrc                $HOME/.xinitrc
installdotfile .X.d/.Xresources             $HOME/.Xresources
installdotfile .config/dunst/dunstrc        $HOME/.config/dunst/dunstrc
installdotfile .gtkrc-2.0                   $HOME/.gtkrc-2.0
installdotfile .config/gtk-3.0/settings.ini $HOME/.config/gtk-3.0/settings.ini
installdotfile .ssh/config                  $HOME/.ssh/config
installdotfile .config/user-dirs.dirs       $HOME/.config/user-dirs.dirs

echo -e "\nFinished."
echo "You may want to remove certain symlinks depending on your OS."
echo "You should open a new terminal or source .bashrc now."
