def roman_numeral num
  output = ''
  output += 'M' * (num / 1000)
  output += 'D' * (num % 1000 / 500)
  output += 'C' * (num % 500 / 100)
  output += 'L' * (num % 100 / 50)
  output += 'X' * (num % 50 / 10)
  output += 'V' * (num % 10 / 5)
  output += 'I' * (num % 5 / 1)

  puts output
end

roman_numeral 4
roman_numeral 9
roman_numeral 14
