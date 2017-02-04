# functions.sh
# Andrew Benson
# useful bash functions

pacfind() {
  pacman -Q | grep $1
}

pacsearch() {
  pacman -Ss $1
}
