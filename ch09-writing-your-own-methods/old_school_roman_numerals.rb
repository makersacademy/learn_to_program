def old_roman_numeral number
	roman_number = ''
	roman_number = roman_number + 'M' * (number / 1000)
	roman_number = roman_number + 'D' * (number % 1000 / 500)
	roman_number = roman_number + 'C' * (number % 500 / 100)
	roman_number = roman_number + 'L' * (number % 100 / 50)
	roman_number = roman_number + 'X' * (number % 50 / 10)
	roman_number = roman_number + 'V' * (number % 10 / 5)
	roman_number = roman_number + 'I' * (number % 5 / 1)
end
puts (old_roman_numeral(568))