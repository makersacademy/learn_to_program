def old_roman_numeral num

  thous = (num / 1000) # M
  fivhund = (num % 1000) / 500 # D
  hundred = (num % 500) / 100 # C
  fift = (num % 100) / 50 # L
  ten = (num % 50) / 10 # X
  five = (num % 10) / 5 # V
  one = (num % 5) / 1 # I

  print 'M' * thous

  if ( fivhund + hundred == 5)
    print 'CM'
  elsif (hundred == 4)
    print 'CD'
  elsif (fivhund ==1)
    print  'D' + 'C' * hundred
  else
    print 'C' * hundred
  end

   if ( fift + ten == 5)
    print 'XC'
  elsif (ten == 4)
    print 'XL'
  elsif (fift ==1)
    print  'L' + 'X' * ten
  else
    print 'X' * ten
  end

  if (five + one == 5)
    print 'IX'
  elsif (one == 4)
    print 'IV'
  elsif (five ==1)
    print  'V' + 'I' * one
  else
    print 'I' * one
  end


end


puts old_roman_numeral(1758)
puts old_roman_numeral(2984)
puts old_roman_numeral(744)
puts old_roman_numeral(4)
puts old_roman_numeral(1462)
puts old_roman_numeral(432)