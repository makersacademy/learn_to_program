def old_roman_numeral(val)
  roman = ''

  roman = roman + 'M' * (val / 1000)
  roman = roman + 'D' * (val % 1000 / 500)
  roman = roman + 'C' * (val % 500 / 100)
  roman = roman + 'L' * (val % 100 / 50)
  roman = roman + 'X' * (val % 50 / 10)
  roman = roman + 'V' * (val % 10 / 5)
  roman = roman + 'I' * (val % 5 / 1)
roman
end

puts(old_roman_numeral(956))
puts(old_roman_numeral(1313))
puts(old_roman_numeral(287))
puts(old_roman_numeral(17))
