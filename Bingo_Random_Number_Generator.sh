# Here,I've built a random number generator which will display a random number below 75 assigned to its specified alphabet.
# The body of this mini project is the use of if-else statements along with the usage of environmental variables.
# The Environment Variables form a simple and effective way to pass information about the current operating environment to the program being executed.


#!/bin/bash
# Bingo Number Generator
echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$(( RANDOM % 75 + 1 )) 
# Here random is a environmental variable ,% operator will give you the range you want ( here we want the random variable to generate a random variable below 75.

TEXT="The next number is, "

#Note that inside double paranthesis , you don't have to use $ with the variable. 
if (( NUMBER <= 15 ))
then 
  echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then 
  echo $TEXT I:$NUMBER
elif (( NUMBER < 46 ))
then 
  echo $TEXT N:$NUMBER
elif [[ $NUMBER -lt 61 ]]
then
  echo $TEXT G:$NUMBER
else
  echo $TEXT O:$NUMBER
fi



