def roman_numeral num
  thousands = (num / 1000)
  hundreds = (num % 100 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  numeral = "M" * thousands

  if hundreds == 9
  	numeral = numeral + "CM"
  elsif hundreds = 4
  	numeral = numeral + "CD"
  else
  	numeral = numeral + "D" * (num % 1000 / 500)
  	numeral = numeral + "C" * (num % 500 / 100)
  end

  if tens == 9
  	numeral = numeral + "XC"
  elsif tens == 4
  	numeral = numeral + "XL"
  else
  	numeral = numeral + "L" * (num % 100 / 50)
  	numeral = numeral + "X" * (num % 50 / 10)
  end

  if ones == 9 
  	numeral = numeral + "IX"
  elsif ones == 4
  	numeral = numeral + "IV"
  else
  	numeral = numeral + "V" * (num % 10 / 5)
  	numeral = numeral + "I" * (num % 5 / 1)
  end
  puts numeral
end