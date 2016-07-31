def old_roman_numeral num
  m = num / 1000
  d = num % 1000 / 500
  c = num % 500 / 100
  l = num % 100 / 50
  x = num % 50 / 10
  v = num % 10 /5
  i = num % 5

  str = ""

  str << "M" * m
  str << "D" * d
  str << "C" * c
  str << "L" * l
  str << "X" * x
  str << "V" * v
  str << "I" * i

  str
end

puts old_roman_numeral 3476
