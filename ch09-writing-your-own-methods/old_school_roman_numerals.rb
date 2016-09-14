def old_roman_numeral num
  r = ''
  r += 'M' * (num / 1000)
  num = num % 1000
  r += 'D' * (num / 500)
  num = num % 500 
  r += 'C' * (num / 100)
  num = num % 100
  r += 'L' * (num / 50)
  num = num % 50
  r += 'X' * (num / 10)
  num = num % 10
  r += 'V' * (num / 5)
  num = num % 5
  r += 'I' * num
  r
end

puts old_roman_numeral 1549