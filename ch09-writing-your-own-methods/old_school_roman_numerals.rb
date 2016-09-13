def old_roman_numeral num
  thousand = "M" * (num / 1000)
  five_hundred = "D" * ((num % 1000) / 500)
  hundred = "C" * ((num % 500) / 100)
  fifty = "L" * ((num % 100) / 50)
  ten = "X" * (((num % 100) % 50) / 10)
  five = "V" * ((((num % 100) % 50) % 10) / 5)
  one = "I" * (((((num % 100) % 50) % 10) % 5) / 1)
  return thousand + five_hundred + hundred + fifty + ten + five + one
end

puts old_roman_numeral 1972
