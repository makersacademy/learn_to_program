def old_roman_numeral num

  thousands = num / 1000
  hundreds_left = num % 1000
  hundreds = hundreds_left / 100
  tens_left = num % 100
  tens = tens_left / 10
  units = num % 10

  if hundreds >= 5
    five_hundreds = hundreds / 5
    hundreds = hundreds - 5
  else
    five_hundreds = 0
  end

  if tens >= 5
    fifties = tens / 5
    tens = tens - 5
  else
    fifties = 0
  end

  if units >= 5
    fives = units / 5
    units = units - 5
  else
    fives = 0
  end

  return 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens + 'V'*fives + 'I'*units

end

old_roman_numeral(2557)
old_roman_numeral(1)
old_roman_numeral(21)
old_roman_numeral(132)
old_roman_numeral(155)
