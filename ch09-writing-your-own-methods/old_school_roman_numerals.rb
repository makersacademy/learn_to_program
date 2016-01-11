def old_roman_numeral(number)
  # your code here
  numerals = ""
  numerals = numerals + "M" * (number / 1000)                 
  numerals = numerals + "D" * (number % 1000 / 500)
  numerals = numerals + "C" * (number % 500 / 100)
  numerals = numerals + "L" * (number % 100 / 50)
  numerals = numerals + "X" * (number % 50 / 10)
  numerals = numerals + "V" * (number % 10 / 5)
  numerals = numerals + "I" * (number % 5 / 1)
  numerals
end

puts old_roman_numeral(19)
puts old_roman_numeral(24)
puts old_roman_numeral(459)