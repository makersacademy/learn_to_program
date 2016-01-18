def roman_numeral num
  numeral = ""
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  numeral << "M" * thousands

  if hundreds == 9
    numeral << "CM"
  elsif hundreds == 4
    numeral << "CD"
  else
    numeral << "D" * (num % 1000 / 500)
    numeral << "C" * (num % 500 / 100)
  end

  if tens == 9
    numeral << "XC"
  elsif tens == 4
    numeral << "XL"
  else
    numeral << "L" * (num % 100 / 50)
    numeral << "X" * (num % 50 / 10)
  end

  if ones == 9
    numeral << "IX"
  elsif ones == 4
    numeral << "IV"
  else
    numeral << "V" * (num % 10 / 5)
    numeral << "I" * (num % 5 / 1)
  end
end
