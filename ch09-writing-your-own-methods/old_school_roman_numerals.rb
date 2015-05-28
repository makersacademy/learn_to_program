def old_roman_numeral num
  thous = (num / 1000)
  print 'M' * thous
  fivhund = (num % 1000) / 500
  print  'D' * fivhund
  hundred = (num % 500) / 100
  print 'C' * hundred
  fift = (num % 100) / 50
  print 'L' * fift
  ten = (num % 50) / 10
  print 'X' * ten
  five = (num % 10) / 5
  print 'V' * five
  one = (num % 5) / 1
  print 'I' * one
end

puts old_roman_numeral (2500)
puts old_roman_numeral (1725)
puts old_roman_numeral (1628)
puts old_roman_numeral (751)
puts old_roman_numeral (51)
puts old_roman_numeral (12)
puts old_roman_numeral (3)