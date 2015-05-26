def old_roman_numeral num
  # your code here

  numeral = ""

  numeral << "M" * (num/1000)
  numeral << "D" * (num % 1000 / 500)
  numeral << "C" * (num % 500 / 100)
  numeral << "L" * (num % 100 / 50)
  numeral << "X" * (num % 50 / 10)
  numeral << "V" * (num % 10 / 5)
  numeral << "I" * (num % 5 / 1)

  numeral

 end

puts old_roman_numeral(3000)
puts old_roman_numeral(599)
puts old_roman_numeral(14)