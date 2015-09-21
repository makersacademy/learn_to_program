def old_roman_numeral num
	result = ""

	result = result + "M" * (num / 1000)
	result = result + "D" * (num % 1000 / 500)
	result = result + "C" * (num % 500 / 100)
	result = result + "L" * (num % 100 / 50)
	result = result + "X" * (num % 50 / 10)
	result = result + "V" * (num % 10 / 5)
	result = result + "I" * (num % 5)

	result

end

puts old_roman_numeral 1999