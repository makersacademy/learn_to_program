def old_roman_numeral num
  numeral = ""
  thousands = num / 1000
  numeral << "M" * thousands
  num -= thousands * 1000
  five_hundreds = num / 500
  numeral << "D" * five_hundreds
  num -= five_hundreds * 500
  hundreds = num / 100
  numeral << "C" * hundreds
  num -= hundreds * 100
  fifties = num / 50
  numeral << "L" * fifties
  num -= fifties * 50
  tens = num / 10
  numeral << "X" * tens
  num -= tens * 10
  fives = num / 5
  numeral << "V" * fives
  num -= fives * 5
  numeral << "I" * num
end
