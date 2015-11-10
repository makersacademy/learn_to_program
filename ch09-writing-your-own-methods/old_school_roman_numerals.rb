def old_roman_numeral num
  thousands = (num / 1000)
  five_hundreds = (num % 1000 / 500)
  hundreds = (num % 500 / 100)
  fifties = (num % 100 / 50)
  tens = (num % 50 / 10)
  fives = (num % 10 / 5)
  ones = (num % 5)
  in_romans = 'M' * thousands + 'D' * five_hundreds + 'C' * hundreds + 'L' * fifties + 'X' * tens + 'V' * fives + 'I' * ones
end
