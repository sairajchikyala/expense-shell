# while loop
i=0
while [ $i -lt 10 ]; do
  echo i - $i
  i=$(($i+1))
  done

 # for loop
 for fruit in apple bannana mango grapes lemon ; do
   echo fruit - $fruit
   done

example3() {
  echo hello
  return 10
  echo bye
}

example3
 echo return status - $?

