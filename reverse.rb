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

reverse

