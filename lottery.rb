
def correct_numbers()
	numbers = *(1..10)
	winning_numbers = []
	6.times do
		numbers_mixed = numbers.shuffle!
		winning_numbers = [numbers_mixed[0], numbers_mixed[1], numbers_mixed[2], numbers_mixed[3], numbers_mixed[4], numbers_mixed[5]]
	end
	return winning_numbers
end


def matching_numbers(number1, number2, number3, number4, number5, number6, winning_number1, winning_number2, winning_number3, winning_number4, winning_number5, winning_number6)
		final = []
		your_numbers = [number1, number2, number3, number4, number5, number6]
		winning_numbers = [winning_number1, winning_number2, winning_number3, winning_number4, winning_number5, winning_number6]
		puts "Your numbers are: #{your_numbers}"
		puts "The winning numbers are #{winning_numbers}"
		final = (your_numbers & winning_numbers)
	 	count = final.count
	  	return count
end	

