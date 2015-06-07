def old_roman_numeral num

  # 1000s
  numeral_M = num / 1000

  # 500s
  numeral_D = num % 1000 / 500

  # 100s
  numeral_C = num % 500 / 100

  # 50s
  numeral_L = num % 100 / 50

  # 10s
  numeral_X = num % 50 / 10

  # 5s
  numeral_V = num % 10 / 5

  # 1s
  numeral_I = num % 5 / 1

  puts "M"*numeral_M + "D"*numeral_D + "C"*numeral_C + "L"*numeral_L + "X"*numeral_X + "V"*numeral_V + "I"*numeral_I

end

puts old_roman_numeral 4
puts old_roman_numeral 101
puts old_roman_numeral 854
