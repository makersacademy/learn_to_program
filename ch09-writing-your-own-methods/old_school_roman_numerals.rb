def old_roman_numeral num
  x = ''
x = x + 'M' * (num / 1000)
x = x + 'D' * (num % 1000 / 500)
x = x + 'C' * (num % 500 / 100)
x = x + 'L' * (num % 100 / 50)
x = x + 'X' * (num % 50 / 10)
x = x + 'V' * (num % 10 / 5)
x = x + 'I' * (num % 5/ 1)
x
end

puts old_roman_numeral (2000)
