#This timer contains a simple while loop and a sleep keyword to pause the execution for required time

#!/bin/bash
# Program that counts down to zero from a given argument
echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]] # to make sure it's a positive integer.
then
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I    
    (( I-- ))
    sleep 1 # pause execution for 1 sec
  done
else
  echo Include a positive integer as the first argument.
fi



