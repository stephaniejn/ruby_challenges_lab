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
calculator