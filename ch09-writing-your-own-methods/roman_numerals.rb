def roman_numeral num
  thousands = (num / 1000)
  five_hundreds = (num % 1000 / 500)
  hundreds = (num % 1000 / 100)
  special_hundreds = (num % 500 / 100)
  fifties = (num % 100 / 50)
  tens = (num % 100 / 10)
  special_tens = (num % 50 / 10)
  fives = (num % 10 / 5)
  ones = (num % 10)
  special_ones = (num % 5)

  in_romans = 'M' * thousands
  if hundreds == 9
    in_romans += 'CM'
  elsif hundreds == 4
    in_romans += 'CD'
  else
    in_romans += 'D' * five_hundreds
    in_romans += 'C' * special_hundreds
  end
  if tens == 9
    in_romans += 'XC'
  elsif tens == 4
    in_romans += 'XL'
  else
    in_romans += 'L' * fifties
    in_romans += 'X' * special_tens
  end
  if ones == 9
    in_romans += 'IX'
  elsif ones == 4
    in_romans += 'IV'
  else
    in_romans += 'V' * fives
    in_romans += 'I' * special_ones
  end
end