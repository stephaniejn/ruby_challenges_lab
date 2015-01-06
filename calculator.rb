# Challenge 2 - Calculator

def calculator
	puts "What calculation would you like to do? (add, sub, mult, div)?"
	choice = gets.chomp
	puts "What is number 1?"
	num1 = gets.chomp
	puts "What is number 2?"
	num2 = gets.chomp

case choice
	when "add"
		result = num1.to_i + num2.to_i
	when "sub"
		result = num1.to_i - num2.to_i
	when "mult"
		result = num1.to_i * num2.to_i
	when "div"
		result = num1.to_i / num2.to_i
	else
		puts "Please enter a true option"
	end
puts "The result is #{result}"
end
calculator