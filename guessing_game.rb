# Pick random number: ran_num using rand(100)...does this create 0-100?
def generate_random(min, max)
  ran_num = rand(min..max)
end

def gamer_card(name, result)
  "Hello #{name}, you #{result} that last game."
end

guess_index = []

guess_try = 0

# Set up loop to play again
loop do
  puts "What is your name?"
  name = gets.chomp
  puts
  puts "#{name}, you pick the range."
  puts
  puts "What do you want to be the minimum of the range?"
  min = gets.chomp.to_i
  puts "what do you want to be the maximum of the range?"
  max = gets.chomp.to_i
  ran_num = generate_random(min, max)
# Set up loop to place guesses
	loop do
		print "Please enter a number between #{min} and #{max}: "
		prompt = gets.chomp
		prompt = prompt.to_i
    guess_index << prompt
# guess occurs before the guess_try condition.  so only count to 4.
		if guess_try == 4

		break

		else
			if prompt == ran_num
				puts "Congratulations! You guessed correctly.  "
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

  if guess_try < 4
    result = "Won"
  else
    result = "Lost"
  end

  outcome = gamer_card(name, result)

  print outcome
  puts
# Finish loop statement to play again or quit.
  print "Your attempts were: "
  print guess_index
  puts
  puts
  puts "Would you like to play again? (y/n)"
	replay = gets.chomp

  # Use the != condition to boot user if they don't follow directions.
	if replay != "y"
	  break
	else
    guess_index = []
    guess_try = 0
	end
end

# Can add more complicated method by using one method to respond if the guess was too high or too low AND make the
# background of the output red; green if they get it correct.
