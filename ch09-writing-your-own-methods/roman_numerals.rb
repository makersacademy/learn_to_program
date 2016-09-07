def roman_numeral num
  new_roman = ""

  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  new_roman = "M" * thousands

  if hundreds == 9
    new_roman = new_roman + "CM"
  elsif hundreds == 4
    new_roman = new_roman + "CD"
  else
    new_roman = new_roman + "D" * (num % 1000 / 500)
    new_roman = new_roman + "C" * (num % 500 / 100)
  end

  if tens == 9
    new_roman = new_roman + "XC"
  elsif tens == 4
    new_roman = new_roman + "XL"
  else
    new_roman = new_roman + "L" * (num % 100 / 50)
    new_roman = new_roman + "X" * (num % 50 / 10)
  end

  if ones == 9
    new_roman = new_roman + "IX"
  elsif ones == 4
    new_roman = new_roman + "IV"
  else
    new_roman = new_roman + "V" * (num % 10 / 5)
    new_roman = new_roman + "I" * (num % 5)
  end
    new_roman
end
