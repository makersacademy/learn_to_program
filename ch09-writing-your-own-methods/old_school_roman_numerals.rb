def old_roman_numeral num

  thousands = num / 1000
  five_hundreds = (num % 1000) / 500
  hundreds = (num % 500) / 100
  fifties = (num % 100) / 50
  tens = (num % 50) / 10
  fives = (num % 10) / 5
  ones = (num % 5) / 1

  str = ""

  str <<  "M" * thousands
  str <<  "D" * five_hundreds
  str << "C" * hundreds
  str << "L" * fifties
  str << "X" * tens
  str << "V" * fives
  str << "I" * ones

  str

end
