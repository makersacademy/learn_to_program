def old_roman_numeral(number)
  num = ""
  num = num + "M" * (number / 1000)
  num = num + "D" * (number % 1000 / 500)
  num = num + "C" * (number % 500 / 100)
  num = num + "L" * (number % 100 / 50)
  num = num + "X" * (number % 50 / 10)
  num = num + "V" * (number % 10 / 5)
  num = num + "I" * (number % 5 / 1)
end

puts old_roman_numeral(4)
puts old_roman_numeral(5)
puts old_roman_numeral(10)
puts old_roman_numeral(19)
puts old_roman_numeral(22)
