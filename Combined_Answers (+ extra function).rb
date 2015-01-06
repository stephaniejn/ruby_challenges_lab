# Challenge 1 - Temperature Converter

def temp_converter

	puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
	temp = gets.chomp
	if temp == "1"
		puts "Enter Celsius Temperature"
		cels_temp = gets.chomp
		cels_temp = cels_temp.to_i * (9.0/5.0) + 32.0
		puts "In Farenheit, that is: #{cels_temp.round}"
	elsif temp == "2"
		puts "Enter Fahrenheit Temperature"
		far_temp = gets.chomp
		far_temp = (far_temp.to_i - 32.0) * (5.0/9.0)
		puts "In Celsius, that is: #{far_temp.round}"
	else 
		puts "Not an option - please try again"
	end
end

# Challenge 2 - Calculator

def calculator
	puts "What calculation would you like to do? (add, sub, mult, div)?"
	choice = gets.chomp
	if choice == "add"
		puts "What is number 1?"
		num1 = gets.chomp
		puts "What is number 2?"
		num2 = gets.chomp
		sum = num1.to_i + num2.to_i
		puts "The sum is #{sum}"
	elsif choice == "sub"
		puts "What is number 1?"
		num1 = gets.chomp
		puts "What is number 2?"
		num2 = gets.chomp
		result = num1.to_i - num2.to_i
		puts "The result is #{result}"
	elsif choice == "mult"
		puts "What is number 1?"
		num1 = gets.chomp
		puts "What is number 2?"
		num2 = gets.chomp
		result = num1.to_i * num2.to_i
		puts "The result is #{result}"
	elsif choice == "div"
		puts "What is number 1?"
		num1 = gets.chomp
		puts "What is number 2?"
		num2 = gets.chomp
		result = num1.to_i / num2.to_i
		puts "The result is #{result}"
	else
		puts "Please enter a true option"
	end	
end

# Challenge 3 - Reverse a string

def reverse
	puts "Enter a string"
	input_first = gets.chomp
	input = input_first.split("")
	array = []
	length = input.length-1
	for i in (0..length)
		array.push(input[length - i])
	end
	puts "#{array.join("")}"
end

# Challenge 4 - Bank Transactions
def bank_transaction
	balance = 0
# puts "Would you like to continue?"
	# answer = gets.chomp
	answer = "yes"
	while answer == "yes" do
		puts "What would you like to do? (deposit, withdraw, check_balance)"
		choice = gets.chomp
		if choice == "deposit"
			puts "How much would you like to deposit?"
			number = gets.chomp
			balance = number.to_i + balance
			puts "Your current balance is #{balance}"
			puts "Would you like to continue?"
			answer = gets.chomp
		elsif choice == "withdraw"
			puts "How much would you like to withdraw?"
			withdrawl = gets.chomp.to_i
			if withdrawl > balance
				puts "Sorry you don't have an overdraft"
			else 
				new_balance = balance - withdrawl
				puts "Your new balance is #{new_balance}"
			end
			puts "Would you like to continue?"
			answer = gets.chomp
		elsif choice == "check_balance"
			puts 	puts "Your current balance is #{balance}"
			puts "Would you like to continue?"
			answer = gets.chomp
		else 
			puts "Please choose a valid option"
			puts "Would you like to continue?"
			answer = gets.chomp
		end
	end
end

# Challenge 5 - Guessing Game
def guessing_game
	number = 11
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

#Choice
# answer = "yes"
# while answer == "yes" do
puts "What would you like to play : Temp_Converter, Calculator, Reverse, Banking or Number_Guessing?"
game = gets.chomp.downcase
case game
when "temp_converter"
	temp_converter
when "calculator"
	calculator
when "reverse"
	reverse
when "banking"
	bank_transaction
when "number_guessing"
	guessing_game
else
	puts "That game is in the works..."
end

