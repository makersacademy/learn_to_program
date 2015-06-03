def old_roman_numeral num

	numeral = ''

	numeral << 'M' * (num / 1000)
	numeral << 'D' * (num % 1000 / 500)
	numeral << 'C' * (num % 500 / 100)
	numeral << 'L' * (num % 100 / 50)
	numeral << 'X' * (num % 50 / 10)
	numeral << 'V' * (num % 10 / 5)
	numeral << 'I' * (num % 5)
	numeral
end

puts old_roman_numeral(2442)

