def old_roman_numeral(num)

  converted = ""

  converted << "M" * (num / 1000)
  converted << "D" * (num % 1000 / 500 )
  converted << "C" * (num % 500 / 100 )
  converted << "L" * (num % 100 / 50 )
  converted << "X" * (num % 50 / 10)
  converted << "V" * (num % 10 / 5)
  converted << "I" * (num % 5 / 1)

end

puts old_roman_numeral(20)
puts old_roman_numeral(2978)
