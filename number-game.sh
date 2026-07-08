#!/bin/bash

#welcome message
echo "Would you like to play a number-guessing game? (Enter 'Y' for yes and 'N' for no)"

read play

#variables
number=8

#game conditional
if [ $play == "Y" ]; then
    echo "Please guess a number between 1 and 10."
    read guess
    if [ $guess -eq $number ]; then
        echo "You have guessed the right number! It was 8."
    else
        echo "You have guessed the wrong number!"
    fi
else
   echo "Please try again when you are ready."
fi

