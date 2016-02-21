def old_roman_numeral num
	# Break apart the number into an array 
	roman = ""
	# Get the 1000s digit
	roman << "M" * (num  / 1000)
	num = num % 1000
	# Get the 500s digit
	roman << "D" * (num / 500)
	num = num % 500
	# Get the 100s digit
	roman << "C" * (num / 100)
	num = num % 100
	# Get the 50s digit
	roman << "L" * (num / 50)
	num = num % 50
	# Get the 10s digit
	roman << "X" * (num / 10)
	num = num % 10
	# Get the 5s digit
	roman << "V" * (num / 5)
	num = num % 5
	# Get the 1s digit
	roman << "I" * num
end
