def roman_numeral num
  roman_numeral = ""

  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  singles = (num % 10 / 1)

  roman_numeral = "M" * thousands

  if hundreds == 9
    roman_numeral = roman_numeral + "CM"
  elsif hundreds == 4
    roman_numeral = roman_numeral + "CD"
  else
    roman_numeral = roman_numeral + "D" * (num % 1000 / 500)
    roman_numeral = roman_numeral + "C" * (num % 500 / 100)
  end

  if tens == 9
    roman_numeral = roman_numeral + "XC"
  elsif tens == 4
    roman_numeral = roman_numeral + "XL"
  else
    roman_numeral = roman_numeral + "L" * (num % 100 / 50)
    roman_numeral = roman_numeral + "X" * (num % 50 / 10)
  end

  if singles == 9
    roman_numeral = roman_numeral + "IX"
  elsif singles == 4
    roman_numeral = roman_numeral + "IV"
  else
    roman_numeral = roman_numeral + "V" * (num % 10 / 5)
    roman_numeral = roman_numeral + "I" * (num % 5 / 1)
  end

  roman_numeral

end

puts roman_numeral(2644)
