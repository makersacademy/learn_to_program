def roman_numeral num
  thousands = num/1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  roman = ''
  roman << 'M' * thousands

  if hundreds == 4
    roman << 'CD'
  elsif hundreds == 9
    roman << 'CM'
  else
    roman << 'D' * (num % 1000 / 500)
    roman << 'C' * (num % 500 / 100)
  end

  if tens == 4
    roman << 'XL'
  elsif tens == 9
    roman << 'XC'
  else
    roman << 'L' * (num % 100 / 50)
    roman << 'X' * (num % 50 / 10)
  end

  if  ones == 4
    roman << 'IV'
  elsif ones == 9
    roman << 'IX'
  else
    roman << 'V' * (num % 10 / 5)
    roman << 'I' * (num % 5)
  end

roman
end
