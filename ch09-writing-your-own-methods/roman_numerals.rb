def roman_numeral num
  result = []
  hundreds = (num % 1000 / 100)
  tens  = (num % 100 / 10)
  ones  = (num % 10)

  result << ("M") * (num / 1000)

  if hundreds == 9
    result << 'CM'
  elsif hundreds == 4
    result << 'CD'
  else
    result << 'D' * (num % 1000 / 500)
    result << 'C' * (num % 500 / 100)
  end

  if tens == 9
    result << 'XC'
  elsif tens == 4
    result << 'XL'
  else
    result << 'L' * (num % 100 / 50)
    result << 'X' * (num % 50 / 10)
  end

  if ones == 9
    result <<  'IX'
  elsif ones == 4
    result <<  'IV'
  else
    result <<  'V' * (num % 10 / 5)
    result <<  'I' * (num % 5 / 1)
  end
  result.join
end
