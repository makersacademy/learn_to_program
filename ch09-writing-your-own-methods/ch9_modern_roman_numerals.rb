def roman (n)

	thousands = (n / 1000)
	hundreds = (n % 1000) / 100
	tens = (n % 100) / 10
	ones = (n % 10)

	roman = "M" * thousands

	if hundreds == 9
		roman = roman + "CM"
	elsif hundreds == 4
		roman = roman + "CD"
	else
		roman = roman + "D" * (n % 1000 / 500)
		roman = roman + "C" * (n % 500 / 100)
	end

	if tens == 9
		roman = roman + "XC"
	elsif tens == 4
		roman = roman + "XL"
	else
		roman = roman + "L" * (n % 100 / 50)
		roman = roman + "X" * (n % 50 / 10)
	end

	if ones == 9
		roman = roman + "IX"
	elsif ones == 4
		roman = roman + "IV"
	else
		roman = roman + "V" * (n % 10 /5)
		roman = roman + "I" * (n % 5 /1)
	end
end
