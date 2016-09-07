def roman_to_integer roman
	numerals = {'i' => 1,
				'v' => 5,
				'x' => 10,
				'l' => 50,
				'c' => 100,
				'd' => 500,
				'm' => 1000}

	value = 0
	index = roman.length - 1

	while index >= 0
		cur = roman[index].downcase
		if index == 0
			value += numerals[cur]
			break
		end
		value += numerals[cur]
		prev = roman[index - 1].downcase
		if numerals[cur] > numerals[prev]
			value -= numerals[prev]
			index -= 1
		end
		index -= 1
	end
	
	return value
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))