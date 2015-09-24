def roman_to_integer roman
	digital_vals = {
		'i' => 1,
		'v' => 5,
		'x' => 10,
		'l' => 50,
		'c' => 100,
		'd' => 500,
		'm' => 1000
	}

	total = 0
	prev = 0
	index = roman.length - 1

	while index >= 0
		c = roman[index].downcase
		index -= 1
		val = digital_vals[c]
		if !val
			puts 'Not a valid numeral'
			return
		end

		if val < prev
			val *= -1
		else 
			prev = val
		end
		total += val
	end
	total

end