def old_roman_numeral num
  # your codef old_roman_numeral number
  	oldRoman = ''

  	oldRoman += 'M' * (num / 1000)
  	oldRoman += 'D' * (num % 1000 / 500)
  	oldRoman += 'C' * (num % 500 / 100)
  	oldRoman += 'L' * (num % 100 / 50)
  	oldRoman += 'X' * (num % 50 / 10)
  	oldRoman += 'V' * (num % 10 / 5 )
  	oldRoman += 'I' * (num % 5 / 1 )

  	return oldRoman
end

puts old_roman_numeral 1999
