#A Game Written in bash

#This section will present a simple guessing game written in bash(1). The logic of the game is based on a random number generator that produces random numbers between 1 and 20 and expects from the user to guess them.

#!/bin/bash
NUMGUESS=0

echo "$0 - Guess a number between 1 and 20"

(( secret = RANDOM % 20 + 1 ))

while [[ guess -ne secret ]]
do
    (( NUMGUESS = NUMGUESS + 1 ))
    read -p "Enter guess: " guess

    if (( guess < $secret )); then
        echo "Try higher..."
    elif (( $guess > $secret )); then
        echo "Try lower..."
    fi
done

printf "Yes! You guessed it in $NUMGUESS guesses.\n"