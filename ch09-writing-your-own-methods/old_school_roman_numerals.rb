def old_roman_numeral num

letter = ''

letter  = letter + 'M' * (num/1000)

letter = letter + 'D' * (num%1000 /500)

letter = letter + 'C' * (num%500 /100)

letter = letter + 'L' * (num%500 /50)

letter = letter + 'X' * (num%50 /10)

letter = letter + 'V' * (num%10 /5)

letter = letter + 'I' * (num%5 /1)

end

puts old_roman_numeral 2556 





