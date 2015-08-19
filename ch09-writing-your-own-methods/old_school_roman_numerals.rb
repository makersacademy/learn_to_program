def old_roman_numeral num
  
  numString = ''

  left = num 

  write = left/1000
  left = left - write * 1000

  numString = numString + "M" * write

  write = left/500
  left = left - write * 500

  numString = numString + "D" * write

  write = left/100
  left = left - write * 100

  numString = numString + "C" * write

  write = left/50
  left = left - write * 50

  numString = numString + "L" * write

  write = left/10
  left = left - write * 10

  numString = numString + "X" * write

  write = left/5
  left = left - write * 5

  numString = numString + "V" * write

  numString = numString + "I" * left


  numString
end

puts old_roman_numeral(5000)
puts old_roman_numeral(3500)
puts old_roman_numeral(3777)