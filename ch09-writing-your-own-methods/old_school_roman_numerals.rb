def old_roman_numeral num
    old = ''

    old = old + 'M' * (num % 10000 / 1000)
    old = old + 'D' * (num % 1000 / 500)
    old = old + 'C' * (num % 500 / 100)
    old = old + 'L' * (num % 100 / 50)
    old = old + 'X' * (num % 50 / 10)
    old = old + 'V' * (num % 10 / 5)
    old = old + 'I' * (num % 5 / 1)
  end

  puts old_roman_numeral(9)
  puts old_roman_numeral(6)
  puts old_roman_numeral(16)
  puts old_roman_numeral(55)
  puts old_roman_numeral(1110)
  puts old_roman_numeral(2458)
  puts old_roman_numeral(3001)

"""
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
"""
