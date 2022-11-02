#This is a try your luck game where you ask any yes or no question to try out your luck. Make sure to end your question with a question mark.

#!/bin/bash
# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# Creating an array called responses which stores the above mentioned variables

N=$(( RANDOM % 6 ))
# Range output will be between 0 and 5.
# N is the index of the random number generated.


function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark: 
  fi

  read QUESTION
    # read is a keyword used to get user input into a variable called QUESTION.
}

GET_FORTUNE
# calling the function so that it can print the initial sentence.

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

# quesiton is where the read is stored,
# hence the function will run if the $question ends with and only with a question mark. 
# =~ is used to evaluate expressions.
# again is an argument. 

echo 
echo ${RESPONSES[$N]}
echo
# Should be the last printed.
# Printing the item in the array whose index is determined by the variable N. 

