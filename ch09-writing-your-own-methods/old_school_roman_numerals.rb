def old_roman_numeral num

  numeral_M = ""
  numeral_D = ""
  numeral_C = ""
  numeral_L = ""
  numeral_X = ""
  numeral_V = ""
  numeral_I = ""

  numeral_M = num / 1000
  numeral_D = num % 1000 / 500
  numeral_C = num % 500 / 100
  numeral_L = num % 100 / 50
  numeral_X = num % 50 / 10
  numeral_V = num % 10 / 5
  numeral_I = num % 5 / 1

  puts "M"*numeral_M + "D"*numeral_D + "C"*numeral_C + "L"*numeral_L + "X"*numeral_X + "V"*numeral_V + "I"*numeral_I

end

puts(old_roman_numeral(1501))
