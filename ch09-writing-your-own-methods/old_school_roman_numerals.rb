def old_roman_numeral num
  old_roman = ""
  old_roman << "M" * (num / 1000)
  old_roman << "D" * (num % 1000 / 500)
  old_roman << "C" * (num % 500 / 100)
  old_roman << "L" * (num % 100 / 50)
  old_roman << "X" * (num % 50 / 10)
  old_roman << "V" * (num % 10 / 5)
  old_roman << "I" * (num % 5)
  old_roman
end

# lettets to use: I = 1, V = 5, X = 10,
# L = 50, C = 100, D = 500, M = 1000
