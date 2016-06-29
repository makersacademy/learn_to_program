def old_roman_numeral num
  numerals = ''

  numerals = numerals + 'M' * (num        /1000)
  numerals = numerals + 'D' * (num % 1000 / 500)
  numerals = numerals +'C' * (num %  500 / 100)
  numerals = numerals + 'L' * (num %  100 /  50)
  numerals = numerals + 'X' * (num %   50 /  10)
  numerals = numerals +'V' * (num %   10/    5)
  numerals = numerals +'I' * (num %    5/    1)

  numerals
end

puts(old_roman_numeral(513))
