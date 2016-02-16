def roman_numeral num
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
	# breakdown 1s digit
	if num == 9
		roman << "IX"
	elsif num >= 5 && num <= 8
		roman << "V"
		roman << "I" * (num % 5)
	elsif num == 4
		roman << "IV"
	else
		roman << "I" * num
	end
end