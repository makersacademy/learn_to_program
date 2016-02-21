def roman_numeral num
	# Get the number for each place
	thousands = (num / 1000)
	hundreds = (num % 1000 / 100)
	tens = (num % 100 / 10)
	digits = (num % 10)

	string =  "M" * thousands

	if hundreds == 9
		string << "CM"
	elsif hundreds == 4
		string << "CD"
	else
		string << ("D"* (num % 1000 / 500))
		string << ("C"* (num % 500 / 100))
	end

	if tens == 9
		string << "XC"
	elsif tens == 4
		string << "XL"
	else
		string << ("L"* (num % 100 / 50))
		string << ("X"* (num % 50 / 10))
	end

	if digits == 9
		string << "IX"
	elsif digits == 4
		string << "IV"
	else
		string << ("V"* (num % 10 / 5))
		string << ("I"* (num % 5 / 1))
	end

	string

end