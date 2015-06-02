def roman_numeral num
  numerals = ""

  amount = num / 1000
  numerals += "M" * amount
  num -= amount * 1000

  amount = num / 100
  if amount == 9
    numerals += "CM"
  elsif amount == 4
    numerals += "CD"
  else
    numerals += "D" * (num % 1000 / 500)
    numerals += "C" * (num % 500 / 100)
  end
  num -= 100 * amount

  amount = num / 10
  if amount == 9
    numerals += "XC"
  elsif amount == 4
    numerals += "XL"
  else
    numerals += "L" * (num % 100 / 50)
    numerals += "X" * (num % 50 / 10)
  end
  num -= 10 * amount

  amount = num / 1
  if amount == 9
    numerals += "IX"
  elsif amount == 4
    numerals += "IV"
  else
    numerals += "V" * (num % 10 / 5)
    numerals += "I" * (num % 5 / 1)
  end
  num -= 1 * amount

  numerals
end