def old_roman_numeral num
  thous = (num / 1000)
  print 'M' * thous
  fivhund = (num - (thous * 1000)) / 500
  print  'D' * fivhund
  hundred = (num - ((thous * 1000) + (fivhund * 500))) / 100
  print 'C' * hundred
  fift = (num - ((thous * 1000) + (fivhund * 500) + (hundred * 100))) / 50
  print 'L' * fift
  ten = (num - ((thous * 1000) + (fivhund * 500) + (hundred * 100) + (fift * 50))) / 10
  print 'X' * ten
  five = (num - ((thous * 1000) + (fivhund * 500) + (hundred * 100) + (fift * 50) + (ten * 10))) / 5
  print 'V' * five
  one = (num - ((thous * 1000) + (fivhund * 500) + (hundred * 100) + (fift * 50) + (ten * 10) + (five * 5))) / 1
  print 'I' * one
end

puts old_roman_numeral (4837)
puts old_roman_numeral (1887)
puts old_roman_numeral (625)
puts old_roman_numeral (12)