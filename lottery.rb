
def correct_numbers()
	numbers = *(1..10)
	winning_numbers = []
	6.times do
		number_picked = numbers.sample
	   	winning_numbers.push(number_picked)
	end
	return winning_numbers
end


def matching_numbers(number1, number2, number3, number4, number5, number6, winning_numbers)
		final = []
		your_numbers = [number1, number2, number3, number4, number5, number6]	
	 	your_numbers.each do |number|
	 		winning_numbers.each do |number2|
	 			if number == number2	 
	 				final << number
	 			end
	 		end
	 	end
	 	count = final.count
	 	return count
end	

# count = matching_numbers(1,2,3,4,5,6,[4, 10, 8, 10, 7, 1])
# puts count
# puts count.class
