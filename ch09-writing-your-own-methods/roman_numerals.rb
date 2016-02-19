def roman_numeral num
  return "Not positive integer." if num <= 0
  roman = ""
  roman += "M" * (num / 1000)

  if num % 1000 / 100 == 9
    roman += "CM"
  elsif num % 1000 / 100 == 4
    roman += "CD"
  else
    roman += "D" * (num % 1000 / 500)
    roman += "C" * (num % 500 / 100)
  end

  if num % 100 / 10 == 9
    roman += "XC"
  elsif num % 100 / 10 == 4
    roman += "XL"
  else
    roman += "L" * (num % 100 / 50)
    roman += "X" * (num % 50 / 10)
  end

  if num % 10 == 9
    roman += "IX"
  elsif num % 10 == 4
    roman += "IV"
  else
    roman += "V" * (num % 10 / 5)
    roman += "I" * (num % 5)
  end

  return roman
end
