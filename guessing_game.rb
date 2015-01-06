# Challenge 5 - Guessing Game
def guessing_game
number = rand(1..100)
puts "Guess a number between 1 and 100"
guess = gets.chomp.to_i
counter = 1
while guess != number
	if guess > 100 || guess < 0
		puts "Please enter a guess that is between 0 and 100"
		counter +=1
		guess = gets.chomp.to_i
	elsif number > guess 
		puts "The number is greater than #{guess}"
		counter +=1 
		puts "Guess again!"
		guess = gets.chomp.to_i
	elsif number < guess 
		puts "The number is less than #{guess}"
		counter +=1
		puts "Guess again!"
		guess = gets.chomp.to_i
	end
end
puts "Good job! You got it in #{counter} tries."
end
guessing_game
