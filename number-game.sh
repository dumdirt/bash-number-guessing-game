#!/bin/bash

# Number-guessing game
# Generates a random number and asks player to guess it
# Allows player to replay

# Loading screen function
loading_screen () {
	clear
	echo "Loading game... (Please wait)"
	sleep 2.5
	clear
}

# Controls whether the game loops
game_running="true"

# Asks player to start the game
clear
echo "Would you like to play a number-guessing game? (Enter 'Y' for yes and 'N' for no)"
read start_game

case "$start_game" in
	Y|y)
		loading_screen

		# Game loop: continues until player chooses not to replay
		while [[ "$game_running" == "true" ]]
			do
				# Generates a random number from 1-10
				number=$((RANDOM % 10 + 1))
				echo "Guess a number ranging from 1 to 10."
				read player_guess

				# Checks if player's guess matches the number
				case "$player_guess" in 
					"$number")
						echo "Great job! You have guessed the correct number of $number"
						;;
					*)
						echo "Better luck next time! The correct number was $number"
						;;
				esac
				sleep 2

				# Prompts player to play again
				echo "Would you like to play again? (Enter 'Y' for yes and 'N' for no)"
				read play_again
				case "$play_again" in 
					Y|y)
						game_running="true"
						loading_screen
						;;
					N|n)
						game_running="false"
						;;
					*)
						echo "Please enter a valid input next time."
						game_running="false"
						;;
				esac
			done
		;;
	N|n)
		echo "Please try again when you are ready."
		;;
	*)
		echo "Please enter a valid input next time."
		;;
esac
