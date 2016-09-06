def roman_numeral num
roman = ''

roman = roman + 'M' * (num/1000)

hundreds = (num % 1000 / 100)
  if hundreds == 9 then roman = roman + 'CM'
  elsif hundreds == 4 then roman = roman + 'CD'
  else
  roman = roman + 'D' * (num % 1000 / 500)
  roman = roman + 'C' * (num % 500 / 100)
end

tens = (num % 100 / 10)
  if tens == 9 then roman = roman + 'XC'
  elsif tens == 4 then roman = roman + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
end

ones = (num % 10 / 1)
  if ones == 9 then roman = roman + 'IX'
  elsif ones == 4 then roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end

end
