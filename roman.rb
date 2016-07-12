def old_roman_numeral(num)
 
  roman = ""
  roman = roman + "M" * ( num/1000 )
  roman = roman + "D" * ( num % 1000 / 500)
  roman = roman + "C" * ( num % 500 / 100)
  roman = roman + "L" * ( num % 100 / 50)
  roman = roman + "X" * ( num % 50 / 10)
  roman = roman + "V" * ( num % 10 / 5)
  roman = roman + "I" * ( num % 5 / 1)
  
  roman

  
end

puts old_roman_numeral(2431)
puts old_roman_numeral(2341)
puts old_roman_numeral(1234)
puts old_roman_numeral(3923)
puts old_roman_numeral(34)
puts old_roman_numeral(4252)
puts old_roman_numeral(2332)
puts old_roman_numeral(9324)
puts old_roman_numeral(2432)
puts old_roman_numeral(324)

