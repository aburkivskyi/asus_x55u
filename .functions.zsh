function take() {
  [ $# -eq 1 -a ! -d $1 ] &&
    mkdir -p $1 && cd $1
}
