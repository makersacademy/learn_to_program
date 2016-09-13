# M = 1000
# D = 500
# C = 100
# L = 50
# X = 10
# V = 5
# I = 1

def roman_numeral num

  number1000s = (num / 1000)
  number100s = (num % 1000) / 100
  number10s = (num % 100) / 10
  number1s = (num % 10) / 1

  numberDs = (num % 1000) / 500
  numberCs = (num % 500) / 100
  numberLs = (num % 100) / 50
  numberXs = (num % 50) / 10
  numberVs = (num % 10) / 5
  numberIs = (num % 5) / 1

  result = "M" * number1000s

  if number100s == 9
    result = result + "CM"
  elsif number100s == 4
    result = result + "CD"
  else
    result = result + "D" * numberDs
    result = result + "C" * numberCs
  end

  if number10s == 9
    result = result + "XC"
  elsif number10s == 4
    result = result + "XL"
  else
    result = result + "L" * numberLs
    result = result + "X" * numberXs
  end

  if number1s == 9
    result = result + "IX"
  elsif number1s == 4
    result = result + "IV"
  else
    result = result + "V" * numberVs
    result = result + "I" * numberIs
  end

  result

end
