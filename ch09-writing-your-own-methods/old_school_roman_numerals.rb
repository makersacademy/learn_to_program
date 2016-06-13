def old_roman_numeral num
  number = ''
  number = number + 'M' * (num / 1000)
  number = number + 'D' * (num % 1000 / 500)
  number = number + 'C' * (num % 500 / 100)
  number = number + 'L' * (num % 100 / 50)
  number = number + 'X' * (num % 50 / 10)
  number = number + 'V' * (num % 10 / 5)
  number = number + 'I' * (num % 5 / 1)
end

puts (old_roman_numeral(2894))
