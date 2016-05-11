def old_roman_numeral num
  # your code here
  
  m = num.to_i / 1000
  d = (num % 1000) / 500
  c = (num % 500) / 100
  l = (num % 100) / 50
  x = (num % 50) / 10
  v = (num % 10) / 5
  i = num % 5
  
  roman = ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)
  
  
end