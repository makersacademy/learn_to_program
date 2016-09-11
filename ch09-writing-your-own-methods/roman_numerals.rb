def roman_numeral(n)

thousands_place = (n / 1000)
hundreds_place = (n % 1000) / 100
tens_place = (n % 100) / 10
ones_place = (n % 10)

roman = "M" * thousands_place

  if hundreds_place == 9 
    roman = roman + "CM"

  elsif hundreds_place == 4
    roman = roman + "CD"

  else 
    roman = roman + "D" * (n % 1000 / 500)
    roman = roman + "C" * ( n % 500 / 100 )

  end

  if tens_place == 9
    roman = roman + "XC"

  elsif tens_place == 4
    roman = roman + "XL"

  else
    roman = roman + "L" * (n % 100 / 50)
    roman = roman + "X" * (n % 50 / 10)

  end

  if ones_place == 9
    roman = roman + "IX"

  elsif ones_place == 4
    roman = roman + "IV"

  else
    roman = roman + "V" * (n % 10 / 5)
    roman = roman + "I" * (n % 5 / 1)
  end

return roman

end


x = roman_numeral(784)
puts x
