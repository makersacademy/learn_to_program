def old_roman_numeral(num)
  m = num / 1000
  d = (num - 1000 * m) / 500
  c = (num - 1000 * m - 500 * d) / 100
  l = (num - 1000 * m - 500 * d - 100 * c) / 50
  x = (num - 1000 * m - 500 * d - 100 * c - 50 * l) / 10
  v = (num - 1000 * m - 500 * d - 100 * c - 50 * l - 10 * x) / 5
  i = (num - 1000 * m - 500 * d - 100 * c - 50 * l - 10 * x - v * 5)
  "M" * m + "D" * d + "C" * c + "L" * l + "X" * x + "V" * v + "I" * i
end



p old_roman_numeral(1987)
p old_roman_numeral(12)
p old_roman_numeral(58)
p old_roman_numeral(219)
p old_roman_numeral(2021)
