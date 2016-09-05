def old_roman_numeral(num)
  left = num

  m = left / 1000
  left = left % 1000

  d = left / 500
  left = left % 500

  c = left / 100
  left = left % 100

  l = left / 50
  left = left % 50

  x = left / 10
  left = left % 10

  v = left / 5
  left = left % 5

  i = left / 1
  left = left % 1

  ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)
end
