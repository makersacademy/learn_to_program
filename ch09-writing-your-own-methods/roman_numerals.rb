def roman_numeral num
  string = ""

  m = num/1000
  left = num - m * 1000
  string << "M" * m

  d = left/500
  left = left - d * 500
  string << "D" * d

  c = left/100
  left = left - c * 100
  string << "C" * c

  l = left/50
  left = left - 50 * l
  string << "L" * l

  x = left/10
  left = left - 10 * x
  string << "X" * x

  ix = left / 9
  left = left - 9 * ix
  string << "IX" * ix

  v = left/5
  left = left - 5 * v
  string << "V" * v

  iv = left/4
  left = left - 4 * iv
  string << "IV" * iv

  string << "I" * left
  string
end
