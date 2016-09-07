def roman n
	roman_numeral = ""

	roman_numeral = roman_numeral + "M" * (n / 1000)
	roman_numeral = roman_numeral + "D" * (n%1000 / 500)
	roman_numeral = roman_numeral + "C" * (n%500 / 100)
	roman_numeral = roman_numeral + "L" * (n%100 / 50)
	roman_numeral = roman_numeral + "X" * (n%50 / 10)
	roman_numeral = roman_numeral + "V" * (n%10 / 5)
	roman_numeral = roman_numeral + "I" * (n%5 / 1)

	return roman_numeral
end


