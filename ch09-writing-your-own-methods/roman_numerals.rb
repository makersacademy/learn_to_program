def roman_numeral num

	result = ""

	thousands = num / 1000
	hundreds = (num % 1000) / 100
	tens = (num % 100) / 10
	ones = (num % 10)

	result = "M" * thousands

	if hundreds != 4 && hundreds != 9
		result << "D" * (num % 1000) / 500
		result << "C" * (num % 500) / 100
	elsif hundreds == 4
		result << "CD"
	elsif hundreds == 9
		result << "CM"
	end

	if tens != 4 && tens != 9
		result << "L" * (num % 100) / 50
		result << "X" * (num % 50) / 10
	elsif tens == 4
		result << "XL"
	elsif tens == 9
		result << "XC"
	end

	if ones != 4 && ones != 9
		result << "V" * (num % 10) / 5
		result << "I" * (num % 5)
	elsif ones == 4
		result << "IV"
	elsif ones == 9
		result << "IX"
	end

	result

end