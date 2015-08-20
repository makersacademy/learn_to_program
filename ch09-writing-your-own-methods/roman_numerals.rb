def roman_numeral num
  thousands = (num        / 1000)
  hundreds  = (num % 1000 / 100)
  tens      = (num % 100  /  10)
  ones      = (num %  10       )

  roman_num = 'M' * thousands

  if hundreds == 9
    roman_num = roman_num + 'CM'
  elsif hundreds == 4
    roman_num = roman_num + 'CD'
  else
    roman_num = roman_num + 'D' * (num % 1000 / 500)
    roman_num = roman_num + 'C' * (num %  500 / 100)
  end

  if tens == 9
    roman_num = roman_num + 'XC'
  elsif tens == 4
    roman_num = roman_num + 'XL'
  else
    roman_num = roman_num + 'L' * (num % 100 / 50)
    roman_num = roman_num + 'X' * (num %  50 / 10)
  end

  if ones == 9
    roman_num = roman_num + 'IX'
  elsif ones == 4
    roman_num = roman_num + 'IV'
  else
    roman_num = roman_num + 'V' * (num % 10 / 5)
    roman_num = roman_num + 'I' * (num %  5 / 1)
  end
end

puts(roman_numeral(999))
