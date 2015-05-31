def old_roman_numeral num

numString = ''

numString = 'M' * (num/1000)
numString = numString + 'D'*(num %1000/500)
numString = numString + 'C'*(num %500/100)
numString = numString + 'L'*(num %100/50)
numString = numString + 'X'*(num %50/10)
numString = numString + 'V'*(num %10/5)
numString = numString + 'I'*(num %5/1)

end

puts old_roman_numeral(150)
puts old_roman_numeral(2695)
puts old_roman_numeral(1392)
