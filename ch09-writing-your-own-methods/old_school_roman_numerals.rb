def old_roman_numeral num
	string = ''

	string << 'M' * (num / 1000)
	string << 'D' * (num % 1000 / 500) 
 	string << 'C' * (num % 500 / 100) 
	string << 'L' * (num % 100 / 50) 
 	string << 'X' * (num % 50 / 10) 
	string << 'V' * (num % 10 / 5) 
	string << 'I' * (num % 5 / 1)

	string
end
