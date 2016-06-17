def old_roman_numeral num

  if num <= 0
    puts 'Enter a positive whole number above 0 Please'
  end

  oldrom = ''

  oldrom = oldrom + 'M' * (num / 1000)

  oldrom = oldrom + 'D' * (num % 1000 / 500)

  oldrom = oldrom + 'C' * (num % 500 / 100)

  oldrom = oldrom + 'L' * (num % 100 / 50)

  oldrom = oldrom + 'X' * (num % 50 / 10)

  oldrom = oldrom + 'V' * (num % 10 / 5)

  oldrom = oldrom + 'I' * (num % 5 / 1)

  oldrom

end

 #puts (old_roman_numeral (10))
