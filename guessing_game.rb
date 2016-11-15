# Pick random number: ran_num using rand(100)...does this create 0-100?
ran_num = rand(100)
ran_num = ran_num.to_i
puts ran_num

guess_try = 0

# Set up loop to play again
loop do

# Set up loop to place guesses
	loop do
		print "Please enter a number between 0 - 100:"
		prompt = gets.chomp
		prompt = prompt.to_i

# guess occurs before the guess_try condition.  so only count to 4.
		if guess_try == 4
			puts "You Lost.  You had five incorrect guesses."
		break

		else
			if prompt == ran_num
				print "Congratulations! You guessed correctly.  "
			break

			elsif prompt > ran_num
				puts "Your guess was too high.  Please try again."
			elsif prompt < ran_num
				puts "Your guess was too low. Please try again."
			else
				puts "You did not give a numbe. Please try again."
			end
		end
		guess_try = guess_try + 1
	end

# Finish loop statement to play again or quit.
	puts "Would you like to play again? (y/n)"
		replay = gets.chomp

  # Use the != condition to boot user if they don't follow directions.
	if replay != "y"
	print "Bye!"
	break

	else
	end
end
