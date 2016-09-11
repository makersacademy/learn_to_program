=begin
This takes a number and returns the roman numerals but with the small numbers going before the big numbers and subtracting the value to equal the total. 
=end

def roman_numeral num # this method takes a number (num)
	thous = (num / 1000) # it divides the num by 1000 leaving no remainders and asigns that value to the variable thous
	hunds = (num % 1000 / 100) # the variable hunds is assigned to the sum of the number divided by 1000 and its remainder divided by 100.
	tens = (num % 100 / 10) # ect
	ones = (num % 10 )
	roman = 'M' * thous  # the value of thousand is multiplied by 'M' and assigned to the variable roman

	if hunds == 9  # if statment uses a bolean. If the value of hunds is equal to 9 then it asigns roman the new value of 
		roman = roman + 'CM'
	elsif hunds == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roman = roman + 'C' * (num % 500 / 100)
	end

	if tens == 9
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end

	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)
	end

	roman
end
puts(roman_numeral(1999))
