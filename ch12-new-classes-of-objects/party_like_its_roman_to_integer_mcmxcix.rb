def roman_to_integer number

	#initial check, to establish if the only characters in the string are valid roman numerals
	digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}

	
	single_digits = number.downcase.split('') 
	l = single_digits.length - 2
	
	values = single_digits.map do |x| 
		digit_vals[x] 
	end
	return "invalid numeral" if values.include? nil
	

	for i in 0..l
		if values[i] < values[i+1]
			values[i] *= -1
		end
	end

	sum = 0

	values.each do |x|
		sum = sum + x
	end

	sum

end