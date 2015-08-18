def roman_numeral number
  result = ''
  result = result + "M" * (number/1000)
   result = result + "D" * (number % 1000 /500)
   result = result + "C" * (number % 500 /100)
   result = result + "L" * (number % 100 /50)
   result = result + "X" * (number % 50 /10)
   result = result + "V" * (number % 10 /5)
   result = result + "I" * (number % 5)
end

puts roman_numeral(1777)