def roman_numeral num
  roman = ''

roman = roman + 'M' * (num/1000)



hundreds = (num % 1000 / 100)
if hundreds == 9
  roman = roman + 'CM'
elsif hundreds == 4
  roman = roman + 'CD'
else
  roman = roman + 'D' * (num % 1000 / 500)
  roman = roman + 'C' * (num % 500 / 100)
end
end

puts roman_numeral(300)
