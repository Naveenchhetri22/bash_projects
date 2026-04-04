#!/bin/bash

#here is gonna play a random the guess number game!!

#first gonna create huge function about it
function game {
	#here is the random variable
	digit=$(( $RANDOM % 100 + 1  ))
	counter=1

	#input by user
	echo "GUESS A NUMBER GAME: rules"
	echo "-----------------------------------------------------"
	echo "here you will be given 7 chances only for guess a number"
	echo "------------------------------------------------------"

	#now conditions
	while [ $counter -le 7 ]
	do
		read -p "Guess a number from 1 to 100: " guess

		if [[ ! $guess =~ ^[0-9]+$ ]] || [[ $guess -lt 1 ]] || [[ $guess -gt 100 ]]
		then
			echo "INVALID! Please enter a number between 1 and 100"
			echo "-------------------------------------------------------------------"
			continue
	
		elif [[ $guess -eq $digit ]]
		then
			echo "YOU WON!!!"
			echo "-------------------------------------------------------------------"
			return 0

		elif [[ $guess -gt $digit ]]
		then
			echo "your number is HIGHER than expected....."
			echo "-------------------------------------------------------------------"

		elif [[ $guess -lt $digit ]]
		then
			echo "your number is LESS than expected....."
			echo "-------------------------------------------------------------------"
		fi

		let counter++
	done
	echo "GAME OVER! You used all 7 chances."
        echo "The number was: $digit"
        echo "-------------------------------------------------------------------"
}

# MAIN PROGRAM with play again loop
while true
do
        echo "Hello! press 'a' for playing the game..."
        echo "------------------------------------------------"
        echo "press 'b' for exit the program"
        echo "------------------------------------------------"
        read -p "here: " choice

        case $choice in
                a)
                        game  # Run the game
                        echo
                        echo "Do you want to play again?"
                        echo "press 'y' for YES or 'n' for NO"
                        read -p "here: " play_again
                        
                        if [[ $play_again != "y" && $play_again != "Y" ]]
                        then
                                echo "Thanks for playing! Goodbye!"
                                break
                        fi
                        echo "----------------------------------------"
                        echo "Starting new game..."
                        echo "----------------------------------------"
                        ;;
                b)
                        echo "Goodbye!"
                        exit 0
                        ;;
                *)
                        echo "Invalid choice! Please press 'a' or 'b'"
                        echo "----------------------------------------"
                        ;;
        esac
done
