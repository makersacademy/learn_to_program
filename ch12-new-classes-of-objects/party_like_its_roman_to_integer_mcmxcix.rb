def roman_to_integer roman
	@romans = {	'I' => 1, 		
							'V' => 5, 	
							'X' => 10, 
							'L' => 50,		
							'C' => 100, 
							'D' => 500, 
							'M' => 1000 }

	str = roman.upcase.reverse		# we will go backwards
	last_value = @romans[str[0]]  # last digit's value
	sum = last_value

	(1..str.length-1).each do |i|	
		next_value = @romans[str[i]]
		sum += (next_value < last_value ? -1 : 1) * next_value # only two cases for -1, such as IV or IX..
		last_value = next_value
	end

	sum
end