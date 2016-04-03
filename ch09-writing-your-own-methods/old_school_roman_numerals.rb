def old_roman_numeral n
  result = ''
  result += 'M' * (n / 1000)
  result += 'D' * (n % 1000 / 500)
  result += 'C' * (n % 500 / 100)
  result += 'L' * (n % 100 / 50)
  result += 'X' * (n % 50 / 10)
  result += 'V' * (n % 10 / 5)
  result += 'I' * (n % 5 /1)
  result
end
