def old_roman_numeral num
  thousands = num / 1000
  five_hundreds = num % 1000 / 500
  hundreds = num % 500 / 100
  fiftys = num % 100 / 50
  tens = num % 50 / 10
  fives = num % 10 / 5
  ones = num % 5
  "M"*thousands + "D"*five_hundreds + "C"*hundreds + "L"*fiftys + "X"*tens + "V"*fives + "I"*ones
end

# lettets to use: I = 1, V = 5, X = 10,
# L = 50, C = 100, D = 500, M = 1000
