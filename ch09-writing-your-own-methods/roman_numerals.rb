def roman_numeral num
  new_roman_array = []
  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 / 1)

  new_roman_array << 'M' * thousands

  if hundreds == 9
    new_roman_array << 'CM'
  elsif hundreds == 5
    new_roman_array << 'D'
  elsif hundreds == 4
    new_roman_array << 'CD'
  else
    new_roman_array << 'D' * (num % 1000 / 500)
    new_roman_array << 'C' * (num % 500 / 100)
  end

  if tens == 9
    new_roman_array << 'XC'
  elsif tens == 5
    new_roman_array << 'L'
  elsif tens == 4
    new_roman_array << 'XL'
  else
    new_roman_array << 'L' * (num % 100 / 50)
    new_roman_array << 'X' * (num % 50 / 10)
  end

  if ones == 9
    new_roman_array << 'IX'
  elsif ones == 5
    new_roman_array << 'V'
  elsif ones == 4
    new_roman_array << 'IV'
  else
    new_roman_array << 'V' * (num % 10 / 5)
    new_roman_array << 'I' * (num % 5 / 1)
  end

  new_roman_array.join
end
