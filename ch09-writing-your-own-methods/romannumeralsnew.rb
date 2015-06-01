def new_roman_numeral(val)

  thousand = (val / 1000)
  hundred = (val % 1000 / 100)
  ten =  (val % 100 / 10)
  one =  (val % 10)

  roman = 'M' * thousand
  if hundred == 9
    roman = roman + 'CM'
  elsif hundred == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (val % 1000 / 500)
    roman = roman + 'C' * (val % 500 / 100)
  end

  if ten == 9
    roman = roman + 'XC'
  elsif ten == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (val % 100 / 50)
    roman = roman + 'X' * (val % 50 / 10)
  end

  if one == 9
    roman = roman + "IX"
  elsif one == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (val % 10 / 5)
    roman = roman + 'I' * (val % 5 / 1)
  end

roman
end

puts(new_roman_numeral(956))
puts(new_roman_numeral(1313))
puts(new_roman_numeral(287))
puts(new_roman_numeral(17))
