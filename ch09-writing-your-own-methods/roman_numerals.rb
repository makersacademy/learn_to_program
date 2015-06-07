def roman_numeral num

  thousands = num / 1000
  # numeral_D = num % 1000 / 500
  hundreds = num % 500 / 100
  # numeral_L = num % 100 / 50
  tens = num % 50 / 10
  #numeral_V = num % 10 / 5
  ones = num % 5 / 1

  numerals = 'M' * thousands

  if hundreds == 9
    numerals = numerals + 'CM'
  elsif hundreds == 4
    numerals = numerals + 'CD'
  else
    numerals = numerals + 'D' * (num % 1000 / 500)
    numerals = numerals + 'C' * (num % 500 / 100)
  end

  if tens == 9
    numerals = numerals + 'XC'
  elsif tens == 4
    numerals = numerals + 'XL'
  else
    numerals = numerals + 'L' * (num % 100 / 50)
    numerals = numerals + 'X' * (num % 50 / 10)
  end

  if ones == 9
    numerals = numerals + 'IX'
  elsif ones == 4
    numerals = numerals + 'IV'
  else
    numerals = numerals + 'V' * (num % 10 / 5)
    numerals = numerals + 'I' * (num % 5 / 1)
  end

  numerals

end

puts roman_numeral 1000
puts roman_numeral 9
puts roman_numeral 999
puts roman_numeral 441
puts roman_numeral 14


# come back to this and run through, had to check the solutions for this one and adapt to my code
