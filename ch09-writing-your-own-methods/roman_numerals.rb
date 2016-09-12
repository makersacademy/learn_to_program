def roman_numeral num

  thou = (num / 1000)
  hund = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  x = "M" * thou

  if hund == 4
    x = x + "CD"
  elsif hund == 9
    x = x + "CM"
  else
    x = x + "D" * (num % 1000 / 500)
    x = x + "C" * (num % 500 / 100)
  end

  if tens == 4
    x = x + "XL"
  elsif tens == 9
    x = x + "XC"
  else
    x = x + "L" * (num % 100 / 50)
    x = x + "X" * (num % 50 / 10)
  end

  if ones == 4
    x = x + "IV"
  elsif ones == 9
    x = x + "IX"
  else
    x = x + "V" * (num % 10 / 5)
    x = x + "I" * (num % 5 / 1)
  end

  x # returns roman numeral
end

# test criteria below
puts (roman_numeral 4)
puts (roman_numeral 1949)
puts (roman_numeral 2654)
puts (roman_numeral 9)
