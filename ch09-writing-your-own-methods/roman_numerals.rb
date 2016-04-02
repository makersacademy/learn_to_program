def roman_numeral(num)
  numeral = ""

  m = (num / 1000)
  d = (num % 1000) / 500
  c = (num % 500) / 100
  l = (num % 100) / 50
  x = (num % 50) / 10
  v = (num % 10) / 5
  i = num % 5

  numeral = "M" * m

  if c == 9
  numeral << "CM"
  elsif c == 4
  numeral << "CD"
  numeral << "D" * d
  numeral << "C" * c
  else
  numeral << "D" * d
  numeral << "C" * c
  end

  if x == 9
  numeral << "XC"
  elsif x == 4
  numeral << "XL"
  numeral << "L" * l
  numeral << "X" * x
  else
  numeral << "L" * l
  numeral << "X" * x
  end

  if num%10 == 9
  numeral << "IX"
  elsif num%10 == 4
  numeral << "IV"
  numeral << "V" * v
  else
  numeral << "V" * v
  numeral << "I" * i
  end

numeral
end
