def roman_numeral n
thousand = n / 1000
hundreds = n % 1000 / 100
tens  = n % 100 / 10
units  = n % 10

  thousand_to_s = 'M' * thousand

  if hundreds == 9
    hundreds_to_s = 'CM'
  elsif hundreds == 4
    rhundreds_to_s = 'CD'
  else
    hundreds_to_s = 'D' * (n % 1000 / 500) + 'C' * (n % 500 / 100)
  end

  if tens == 9
    tens_to_s = 'XC'
  elsif tens == 4
    tens_to_s = 'XL'
  else
    tens_to_s = 'L' * (n % 100 / 50) + 'X' * (n % 50 / 10)
  end

  if units == 9
    units_to_s = 'IX'
  elsif units == 4
    units_to_s = 'IV'
  else
    units_to_s = 'V' * (n % 10 / 5) + 'I' * (n % 5 / 1)
  end

  thousand_to_s + hundreds_to_s + tens_to_s +units_to_s

end

