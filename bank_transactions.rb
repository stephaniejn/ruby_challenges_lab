# Challenge 4 - Bank Transactions
def bank_transaction
balance = 0.00
	answer = "yes"
	while answer == "yes" do
	puts "What would you like to do? (deposit, withdraw, check_balance)"
	choice = gets.chomp
	if choice == "deposit"
		puts "How much would you like to deposit?"
		number = gets.chomp
		balance = number.to_f + balance
		puts "Your current balance is % .2f" % balance
		puts "Would you like to continue?"
		answer = gets.chomp
	elsif choice == "withdraw"
		puts "How much would you like to withdraw?"
		withdrawl = gets.chomp.to_f
		if withdrawl > balance
			puts "Sorry you don't have an overdraft"
		else 
			balance = balance - withdrawl
			puts "Your new balance is % .2f" % balance
		end
		puts "Would you like to continue?"
		answer = gets.chomp
	elsif choice == "check_balance"
		puts 	puts "Your current balance is % .2f" % balance
		puts "Would you like to continue?"
		answer = gets.chomp
	else 
		puts "Please choose a valid option"
		puts "Would you like to continue?"
		answer = gets.chomp
	end
end
end

bank_transaction

		
	# 	if answer == "yes"
	# 		puts "What would you like to do? (deposit, withdraw, check_balance)"
	# 		choice = gets.chomp
	# 	end
	# end
