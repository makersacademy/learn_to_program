def roman_numeral num
  #makes an array to store letters in
  romanised_number = []

  #how many of each number type to translate
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  units = num % 10

  #pushing correct translations for each number type to array
  romanised_number.push ("M" * thousands)

  if hundreds == 9
    romanised_number.push ("CM")
  elsif hundreds == 4
    romanised_number.push ("CD")
  else
    romanised_number.push ("D" * (num % 1000 / 500))
    romanised_number.push ("C" * (num % 500 / 100))
  end
  if tens == 9
    romanised_number.push ("XC")
  elsif tens == 4
    romanised_number.push ("XL")
  else
    romanised_number.push ("L" * (num % 100 / 50))
    romanised_number.push ("X" * (num % 50 / 10))
  end
  if units == 9
    romanised_number.push ("IX")
  elsif units == 4
    romanised_number.push ("IV")
  else
    romanised_number.push ("V" * (num % 10 / 5))
    romanised_number.push ("I" * (num % 5))
  end
  #gives array as string
  return romanised_number.join
end