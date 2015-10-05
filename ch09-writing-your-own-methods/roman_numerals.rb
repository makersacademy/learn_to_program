def roman_numeral num
	
	thousands = num / 1000
	hundreds = (num % 1000) / 100
	tens = (num % 100) / 10
	digits = num % 10

#working out how to write thousands
roman_thousands = 'M' * thousands

#working out how to write hundreds
if hundreds.between?(5,9)
	roman_hundreds = 'D' + ('C' * (hundreds - 5))
else
	roman_hundreds = 'C' * hundreds
end

#working out how to write tens
if tens.between?(5,9)
	roman_tens = 'L' + ('X' * (tens - 5))
else
	roman_tens = 'X' * tens
end

#working out how to write digits
if digits.between?(0,3)
	roman_digits = 'I' * digits
elsif digits == 4
	roman_digits = 'IV'  
elsif digits.between?(5,8)
	roman_digits = 'V' + ('I' * (digits - 5))
elsif digits == 9
	roman_digits = 'IX'
end

return roman_thousands+roman_hundreds+roman_tens+roman_digits

end