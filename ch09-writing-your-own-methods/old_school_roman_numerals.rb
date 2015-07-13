def old_roman_numeral num
  num = num.to_i
  romanised_number = []
  romanised_number.push ('M' * (num/1000))
  num = num % 1000
  romanised_number.push ("D" * (num/500))
  num = num % 500
  romanised_number.push ("C" * (num/100))
  num = num % 100
  romanised_number.push ("L" * (num/50))
  num = num % 50
  romanised_number.push ("X" * (num/10))
  num = num % 10
  romanised_number.push ("V" * (num/5))
  num = num % 5
  romanised_number.push ("I" * (num/1))
  romanised_number = romanised_number.join("")
  return romanised_number
end