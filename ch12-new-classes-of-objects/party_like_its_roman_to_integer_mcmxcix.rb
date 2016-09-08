def roman_to_integer(roman)
	roman = roman.to_s
	roman_length = roman.length
	# CHECK FOR INVALID CHARACTERS
	valid_character_count = roman.count('MDCLXVI')
	# CHECK FOR INVALID COMBINATIONS OF VALID CHARACTERS
	invalid_character_combination_count = (roman.scan(/IL/).length) + (roman.scan(/IC/).length) + (roman.scan(/ID/).length) + (roman.scan(/IM/).length) + (roman.scan(/VX/).length) + (roman.scan(/VL/).length) + (roman.scan(/VC/).length) + (roman.scan(/VD/).length) + (roman.scan(/VM/).length) + (roman.scan(/XD/).length) + (roman.scan(/XM/).length) + (roman.scan(/DM/).length)
	if roman_length != valid_character_count || invalid_character_combination_count > 0
		puts "Please enter a valid roman numeral"
		exit
	else
		num = 0
		# COUNTING UP
		thousands = roman.count('M')
		five_hundreds = roman.count('D')
		hundreds = roman.count('C')
		fifties = roman.count('L')
		tens = roman.count('X')
		fives = roman.count('V')
		ones = roman.count('I')
		num = num + (thousands * 1000) + (five_hundreds * 500) + (hundreds * 100) + (fifties * 50) + (tens * 10) + (fives * 5) + (ones * 1)
		# COUNTING DOWN
		minus_hundreds = roman.scan(/CD/).length + roman.scan(/CM/).length
		minus_tens = roman.scan(/XL/).length + roman.scan(/XC/).length
		minus_ones = roman.scan(/IV/).length + roman.scan(/IX/).length
		num = num - ((minus_hundreds * 200) + (minus_tens * 20) + (minus_ones * 2))
	return num
	end
end