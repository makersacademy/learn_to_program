def roman_numeral num
thousand = num / 1000
hundreds = num % 1000 / 100
tenth = num % 100 / 10
units = num % 10

roman = 'M' * thousand

	if hundreds == 9
		roman = roman +'CM'
	elsif hundreds == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roman = roman + 'C' * (num % 500 / 100)
	end

	if tenth == 9
		roman = roman + 'XC'
	elsif tenth == 4
		roman = roman +'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end

	if units == 9
		roman = roman + 'IX'
	elsif units == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)	
	end
end

