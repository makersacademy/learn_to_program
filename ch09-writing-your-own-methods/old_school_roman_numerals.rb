def old_roman_numeral num
  # your code here
  conv = ''
conv = conv + 'M' * (num / 1000)
conv = conv + 'D' * (num % 1000 / 500)
conv = conv + 'C' * (num % 500 / 100)
conv = conv + 'L' * (num % 100 / 50)
conv = conv + 'X' * (num % 50 / 10)
conv = conv + 'V' * (num % 10 / 5)
conv = conv + 'I' * (num % 5 / 1)
return conv

end
