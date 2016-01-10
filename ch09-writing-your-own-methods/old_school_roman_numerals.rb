def old_roman_numeral num
  raise 'Must use positive integer' if num <= 0

  numerals = ''

  numerals << 'M' * (num / 1000)
  numerals << 'D' * (num % 1000 / 500)
  numerals << 'C' * (num % 500 / 100)
  numerals << 'L' * (num % 100 / 50)
  numerals << 'X' * (num % 50 / 10)
  numerals << 'V' * (num % 10 / 5)
  numerals << 'I' * (num % 5 / 1)

  numerals
end
