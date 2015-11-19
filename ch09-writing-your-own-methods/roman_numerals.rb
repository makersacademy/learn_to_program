def roman_numeral num

thousands = (num /1000)
hundreds = (num % 1000 / 100)
tens = (num % 100 /10)
ones = (num % 10 / 1)

x = 'M' * thousands
if hundreds == 9
	x = x + 'CM'
elsif hundreds == 4
	x = x + 'CD'
else 
	x = x + 'D' * (num % 1000 / 500)
	x = x + 'C' * (num % 500 /100)
end

if tens == 9
	x = x + 'XC'
elsif tens == 4
	x = x + 'XL'
else
	x = x + 'L' * (num % 100 / 50)
	x = x + 'X' * (num % 50 / 10)
end

if ones == 9
	x = x + 'IX'
elsif ones == 4
	x = x + 'IV'
else
	x = x + 'V' * (num % 10 / 5)
	x = x + 'I' * (num % 5 / 1)
end	

x

end

puts roman_numeral (1343)
