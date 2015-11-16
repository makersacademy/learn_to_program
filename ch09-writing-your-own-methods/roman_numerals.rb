def roman_numeral num
  qty_1000s = (num / 1000)
  qty_500s = (num % 1000 / 500)
  qty_100s = (num % 1000 / 100)
  qty_100s_exception = (num % 500 / 100)
  qty_50s = (num % 100 / 50)
  qty_10s = (num % 100 / 10)
  qty_10s_exception = (num % 50 / 10)
  qty_5s = (num % 10 / 5)
  qty_1s = (num % 10)
  qty_1s_exception = (num % 5)

  arabic = 'M' * qty_1000s
  if qty_100s == 9
    arabic += 'CM'
  elsif qty_100s == 4
    arabic += 'CD'
  else
    arabic += 'D' * qty_500s
    arabic += 'C' * qty_100s_exception
  end
  if qty_10s == 9
    arabic += 'XC'
  elsif qty_10s == 4
    arabic += 'XL'
  else
    arabic += 'L' * qty_50s
    arabic += 'X' * qty_10s_exception
  end
  if qty_1s == 9
    arabic += 'IX'
  elsif qty_1s == 4
    arabic += 'IV'
  else
    arabic += 'V' * qty_5s
    arabic += 'I' * qty_1s_exception
  end
end

# Took me a while to find out that I needed some exceptions to pass the correct arabic number
