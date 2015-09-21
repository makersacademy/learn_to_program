def roman_numeral num
def roman_numeral num

thous = (num / 1000)
hunds = (num % 1000 / 100)
tens = (num % 100 / 10)
ones = (num % 10 )

roman = 'M' * thous

if hunds == 9
roman += 'CM'
elsif hunds == 4
roman += 'CD'
else
roman += 'D' * (num % 1000 / 500)
roman += 'C' * (num % 500 / 100)
end

if tens == 9
roman += 'XC'
elsif tens == 4
roman += 'XL'
else
roman += 'L' * (num % 100 / 50)
roman += 'X' * (num % 50 / 10)
end

if ones == 9
roman += 'IX'
elsif ones == 4
roman += 'IV'
else
roman += 'V' * (num % 10 / 5)
roman += 'I' * (num % 5 / 1)
end

end

end
