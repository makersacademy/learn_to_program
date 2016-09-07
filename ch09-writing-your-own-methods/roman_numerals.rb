def roman_numeral num
	th = (num / 1000)
 	hu = (num % 1000 / 100)
	te = (num % 100 / 10)
	on = (num % 10)

	roman = 'M' * th
	
	if hu == 9
		roman = roman + 'CM'
	elsif hu == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roamn = roman + 'C' * (num % 500 / 100)
	end

	if te == 9
		roman = roman + 'XC'
	elsif te == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end
	if on == 9 
		roman = roman + 'IX'
	elsif on == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)
	end
	roman
end
