def roman_to_integer roman
	roman_bank = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
	 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I", }

	 output = 0

	 for value, letter in roman_bank
	 	while roman.index(letter) == 0
	 		output += value
	 		roman.slice!(letter)
	 	end
	 end
	 output
end

p roman_to_integer "MCMXCIV"