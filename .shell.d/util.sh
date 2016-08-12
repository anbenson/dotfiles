# util.sh
# Andrew Benson
# useful shell functions

# returns whether the argument is a known program or not
# arg1: program in question
exists() {
  return $(command -v $1 >/dev/null);
}

# wrapper around "exists" that prints out an error message if appropriate
# arg1: program in question
# arg2: reason for need of program
checkexists() {
  if exists $1; then
    return 0;
  else
    echo -e "[WARN] Missing $1! Skipping $2...\n";
    return 1;
  fi
}

