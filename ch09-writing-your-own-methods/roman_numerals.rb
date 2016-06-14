def roman_numeral num
  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 / 1)

  number = 'M' * thousands

  if hundreds == 9
    number = number + 'CM'
  elsif hundreds == 4
    number = number + 'CD'
  else
    number = number + 'D' * (num % 1000 / 500)
    number = number + 'C' * (num % 500 / 100)
  end

  if tens == 9
    number = number + 'XC'
  elsif tens == 4
    number = number + 'XL'
  else
    number = number + 'L' * (num % 100 / 50)
    number = number + 'X' * (num % 50 / 10)
  end

  if ones == 9
    number = number + 'IX'
  elsif ones == 4
    number = number + 'IV'
  else
    number = number + 'V' * (num % 10 / 5)
    number = number + 'I' * (num % 5 / 1)
  end

  number

end

puts (roman_numeral(14))
