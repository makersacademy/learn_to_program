def english_number number
	length_of_number = number.to_s.length
	
	num_string = ""    

    ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	
	# If block for 1-999
	
	if length_of_number == 1
		num_string = ones_place[number-1]
	elsif length_of_number == 2
		left = number
		write = left / 10
		left = left % 10
		
		if number / 10 == 1
			num_string = teenagers[left-1]
		else
			num_string = tens_place[write-1] + "-" + ones_place[left-1]
		end
	elsif length_of_number == 3
		left = number
		write = left / 100
		left = left % 100
		
		num_string = ones_place[write-1] + " hundred"
		num_string = num_string << " " << (english_number left)
	end
	
	# If block on thousands
	
	if length_of_number >= 4 && length_of_number <= 6
		left = number
		write = left / 1000
		left = left % 1000
		
		num_string = num_string << (english_number write) << " thousand" << " " << (english_number left)
	end
	
	# If block on millions
	
	if length_of_number >= 7 && length_of_number <= 9
		left = number
		write = left / 1000000
		left = left % 1000000
		
		num_string = num_string << (english_number write) << " million" << " " << (english_number left)
	end
	
	# If block on billions
	
	if length_of_number >= 10 && length_of_number <= 12
		left = number
		write = left / 1000000000
		left = left % 1000000000
		
		num_string = num_string << (english_number write) << " billion" << " " << (english_number left)
	end
	
	# If block on trillions
	
	if length_of_number >= 13 && length_of_number <= 15
		left = number
		write = left / 1000000000000
		left = left % 1000000000000
		
		num_string = num_string << (english_number write) << " trillion" << " " << (english_number left)
	end
	
	num_string
end

puts english_number(3)
puts english_number(13)
puts english_number(34)
puts english_number(265)
puts english_number(345211)
puts english_number(345211678)
puts english_number(345211678123)
puts english_number(345211678123456)
