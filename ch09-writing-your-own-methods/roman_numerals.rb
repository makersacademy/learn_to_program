#!/usr/bin/env ruby
def roman_numeral num
  results = ''
  results = results + 'M' * (num / 1000)
  results = results + 'D' * (num % 1000 / 500)
  results = results + 'C' * (num % 500 / 100)
  results = results + 'L' * (num % 100 / 50)
  results = results + 'X' * (num % 50 / 10)
  if (num % 10 == 9)
      results = results + 'IX'
      return results
  elsif (num % 10 == 4)
      results = results + 'IV'
      return results
  else
      results = results + 'V' * (num % 10 / 5)
      results = results + 'I' * (num % 5)
      return results
  end

  results
end

puts(roman_numeral(1999))
