#!/usr/bin/env ruby

def old_roman_numeral num

  results = ''
  results = results + 'M' * (num / 1000)
  results = results + 'D' * (num % 1000 / 500)
  results = results + 'C' * (num % 500 / 100)
  results = results + 'L' * (num % 100 / 50)
  results = results + 'X' * (num % 50 / 10)
  results = results + 'V' * (num % 10 / 5)
  results = results + 'I' * (num % 5)
  results

end

puts(old_roman_numeral(1999))
