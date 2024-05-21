example(){
  echo hello example
}
example(){
  echo value of 1 - $1
  echo "value of * - $*"
  echo "value of # - $#"
}


example1 10 20 30