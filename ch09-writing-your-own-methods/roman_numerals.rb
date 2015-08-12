def roman(num)
	thousands = (num / 1000)
	hundreds = (num % 1000 / 100)
	tens = (num % 100 / 10)
	ones = (num % 10 / 1)

	romanNumeral = 'M' * thousands
	if hundreds == 9
		romanNumeral = romanNumeral + 'CM'
	elsif hundreds == 4
		romanNumeral = romanNumeral + 'CD'
	else
		romanNumeral = romanNumeral + 'D' * (num % 1000 / 500)
		romanNumeral = romanNumeral + 'C' * (num % 500 / 100)
	end
	if tens == 9
		romanNumeral = romanNumeral + 'XC'
	elsif tens == 4
		romanNumeral = romanNumeral + 'XL'
	else
		romanNumeral = romanNumeral + 'L' * (num % 100 / 50)
		romanNumeral = romanNumeral + 'X' * (num % 50 / 10)		
	end
	if ones == 9
		romanNumeral = romanNumeral + 'IX'
	elsif ones == 4
		romanNumeral = romanNumeral + 'IV'
	else
		romanNumeral = romanNumeral + 'V' * (num % 10 / 5)
		romanNumeral = romanNumeral + 'I' * (num % 5 / 1)		
	end
	romanNumeral
end