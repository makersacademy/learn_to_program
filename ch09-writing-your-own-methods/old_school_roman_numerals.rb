def old_roman_numeral num
  conversion = ''

  conversion = conversion + 'M' * (num / 1000)
  conversion = conversion + 'D' * (num % 1000 / 500)
  conversion = conversion + 'C' * (num % 500 / 100)
  conversion = conversion + 'L' * (num % 100 / 50)
  conversion = conversion + 'X' * (num % 50 / 10)
  conversion = conversion + 'V' * (num % 10 / 5)
  conversion = conversion + 'I' * (num % 5 / 1)

end

puts old_roman_numeral 4
puts old_roman_numeral 400
puts old_roman_numeral 4000
puts old_roman_numeral 444
puts old_roman_numeral 1990
puts old_roman_numeral 2000
puts old_roman_numeral 1000000
