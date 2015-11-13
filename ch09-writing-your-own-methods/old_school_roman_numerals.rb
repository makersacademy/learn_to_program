def old_roman_numeral num
  thousands = (num / 1000)
  five_hundreds = (num % 1000 / 500)
  hundreds = (num % 500 / 100)
  fifties = (num % 100 / 50)
  tens = (num % 50 / 10)
  fives = (num % 10 / 5)
  ones = (num % 5)

  in_romans = 'M' * thousands
  in_romans += 'D' * five_hundreds
  in_romans += 'C' * hundreds
  in_romans += 'L' * fifties
  in_romans += 'X' * tens
  in_romans += 'V' * fives
  in_romans += 'I' * ones
end