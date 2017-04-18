def old_roman_numeral n

num = ''
num = num + 'M' * (n / 1000)
num = num + 'D' * (n % 1000 / 500)
num = num + 'C' * (n % 500 / 100)
num = num + 'L' * (n % 100 / 50)
num = num + 'X' * (n % 50 / 10)
num = num + 'V' * (n % 10 / 5)
num = num + 'I' * (n % 5 / 1)
num

end
