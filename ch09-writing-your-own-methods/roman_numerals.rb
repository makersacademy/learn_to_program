def roman_numeral num
  thousands_to_convert = (num / 1000)
  hundreds_to_convert = (num % 1000 / 100)
  tens_to_convert = (num % 100 / 10)
  units_to_convert = num % 10

if thousands_to_convert <= 3
  converted_thous = "M" * thousands_to_convert
end

if hundreds_to_convert <= 3
  converted_huns = "C" * hundreds_to_convert
elsif hundreds_to_convert == 4
  converted_huns = 'C' + 'D'
elsif hundreds_to_convert == 5
  converted_huns = 'D'
elsif hundreds_to_convert > 5 && hundreds_to_convert < 9
  converted_huns = 'D' + "C" * (hundreds_to_convert - 5)
elsif hundreds_to_convert == 9
  converted_huns = 'C' + "M"
end

if tens_to_convert <= 3
  converted_tens = "X" * tens_to_convert
elsif tens_to_convert == 4
  converted_tens = 'X' + 'L'
elsif tens_to_convert == 5
  converted_tens = 'L'
elsif tens_to_convert > 5 && tens_to_convert < 9
  converted_tens = 'L' + "X" * (tens_to_convert - 5)
elsif tens_to_convert == 9
  converted_tens = 'X' + "C"
end

if units_to_convert <= 3
  converted_units = "I" * units_to_convert
elsif units_to_convert == 4
  converted_units = 'I' + 'V'
elsif units_to_convert == 5
  converted_units = 'V'
elsif units_to_convert > 5 && units_to_convert < 9
  converted_units = 'V' + "I" * (units_to_convert - 5)
elsif units_to_convert == 9
  converted_units = 'I' + "X"
end

converted_num = converted_thous + converted_huns + converted_tens + converted_units
puts converted_num
converted_num
end
roman_numeral 119
roman_numeral 101
