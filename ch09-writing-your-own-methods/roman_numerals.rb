def roman_numeral num
  thousands = "M" * (num / 1000)
  if num % 1000 / 100 == 9
    hundreds = "CM"
  elsif num % 1000 / 100 == 4
    hundreds = "CD"
  else hundreds = "D" * (num % 1000 / 500) + "C" * (num % 500 / 100)
  end
  if num % 100 / 10 == 9
    tens = "XC"
  elsif num % 100 / 10 == 4
    tens = "IV"
  else tens = "L" * (num % 100 / 50) + "X" * (num % 50 / 10)
  end
  if num % 10 == 9
    units = "IX"
  elsif num % 10 == 4
    units = "IV"
  else units = "V" * (num % 10 / 5) + "I" * (num % 5)
  end
roman = thousands + hundreds + tens + units
end

puts (roman_numeral(2494))
