
#!/bin/bash

echo -e "\n~~ Questionnaire ~~\n"

QUESTION1="What's your name?"
QUESTION2="Where are you from?"
QUESTION3="What's your favorite coding website?"

echo $QUESTION1
read NAME
#reads the user input and stores into a new variable called NAME.

echo $QUESTION2
read LOCATION

echo $QUESTION3
read WEBSITE

echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"
#Prints the sentence after echo . Note that the variables are used as $<VARIABLE_NAME>
