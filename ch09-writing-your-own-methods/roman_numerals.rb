def roman_numeral num

  thousand = (num / 1000)
  hundred = (num % 1000 / 100)
  ten = (num % 100 / 10)
  one = (num % 10 )

  numeral = 'M' * thousand
  
  if hundred == 9
    numeral = numeral + 'CM'
  elsif hundred == 4
    numeral = numeral + 'CD'
  else
    numeral = numeral + 'D' * (num % 1000 / 500)
    numeral = numeral + 'C' * (num % 500 / 100)
  end

  if ten == 9
    numeral = numeral + 'XC'
  elsif ten == 4
    numeral = numeral + 'XL'
  else
    numeral = numeral + 'L' * (num % 100 / 50)
    numeral = numeral + 'X' * (num % 50 / 10)
  end

  if one == 9
    numeral = numeral + 'IX'
  elsif one == 4
    numeral = numeral + 'IV'
  else
    numeral = numeral + 'V' * (num % 10 / 5)
    numeral = numeral + 'I' * (num % 5 / 1)
  end

  numeral

end
