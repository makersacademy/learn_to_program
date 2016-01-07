def old_roman_numeral num

  output_roman = ""

  thousand = num / 1000
  hundred = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  output_roman << "M" * thousand
  output_roman << "D" if hundred >= 5
  output_roman << "C" * (hundred % 5)
  output_roman << "L" if tens >= 5
  output_roman << "X" * (tens % 5)
  output_roman << "V" if ones >= 5
  output_roman << "I" * (ones % 5)

  output_roman

end
