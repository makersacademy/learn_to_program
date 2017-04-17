def roman_numeral num
  conversion = ''

  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 / 1)

  conversion = 'M' * thousands

  if hundreds == 9
    conversion = conversion + 'CM'
  elsif hundreds == 4
    conversion = conversion + 'CD'
  else
    conversion = conversion + 'D' * (num % 1000 / 500)
    conversion = conversion + 'C' * (num % 500 / 100)
  end

  if tens == 9
    conversion = conversion + 'XC'
  elsif tens == 4
    conversion = conversion + 'XL'
  else
    conversion = conversion + 'L' * (num % 100 / 50)
    conversion = conversion + 'X' * (num % 50 / 10)
  end

  if ones == 9
    conversion = conversion + 'IX'
  elsif ones == 4
    conversion = conversion + 'IV'
  else
    conversion = conversion + 'V' * (num % 10 / 5)
    conversion = conversion + 'I' * (num % 5 / 1)
  end
end

puts roman_numeral 1990
