def old_roman_numeral num
  # your code here
  remainder_1000 = num % 1000
  remainder_500 = num % 500
  remainder_100 = num % 100
  remainder_50 = num % 50
  remainder_10 = num % 10
  remainder_5 = num % 5
  "M"*(num / 1000) +
  "D"*(remainder_1000/500) +
  "C"* (remainder_500/100) +
  "L"*(remainder_100/50) +
  "X"*(remainder_50/10) +
  "V"*(remainder_10/5) +
  "I"*(remainder_5)
end
