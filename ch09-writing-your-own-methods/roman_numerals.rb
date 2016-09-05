def roman_numeral num
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

  result = ""
  result += ("M" * m)

  if d == 1 && c == 4
    result += "CM"
  elsif c == 4
    result += "CD"
  else
    result += ("D" * d)
    result += ("C" * c)
  end

  if l == 1 && x == 4
    result += "XC"
  elsif x == 4
    result += "XL"
  else
    result += ("L" * l)
    result += ("X" * x)
  end

  if v == 1 && i == 4
    result += "IX"
  elsif i == 4
    result += "IV"
  else
    result += ("V" * v)
    result += ("I" * i)
  end

  result
end
