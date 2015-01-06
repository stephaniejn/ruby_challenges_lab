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

temp_converter