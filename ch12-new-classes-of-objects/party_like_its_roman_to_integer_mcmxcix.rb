def roman_to_integer roman
	
	numbers = {'i' => 1,
				'v' => 5,
				'x' => 10,
				'l' => 50,
				'c' => 100,
				'd' => 500,
				'm' => 1000}

	total = 0
	prev = 0

	roman.reverse.each_char do |i|
		x = i.downcase
		value = numbers[x]

		if !value
			puts 'Not a Roman Numeral'
			return
		end

		if value < prev
			value *= -1
		else
			prev = value
		end

		total += value
	end

	total

end