def old_roman_numeral num 
  # I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
  m = (num / 1000)       #Integer division so produces 0 if no 1,000's.
  d = ((num % 1000) / 500)
  c = ((num % 500) / 100)
  l = ((num % 100) / 50)
  x = ((num % 50) / 10)
  v = ((num % 10) / 5)
  i = (num % 5)
  "M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v + "I"*i
end

#puts old_roman_numeral 3000
#puts old_roman_numeral 879
