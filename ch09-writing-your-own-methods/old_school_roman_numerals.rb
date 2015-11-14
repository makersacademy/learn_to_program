def old_roman_numeral (num)
  qty_1000s = (num / 1000)
  qty_500s = (num % 1000 / 500)
  qty_100s = (num % 500 / 100)
  qty_50s = (num % 100 / 50)
  qty_10s = (num % 50 / 10)
  qty_5s = (num % 10 / 5)
  qty_1s = (num % 5)
  "#{'M' * qty_1000s}#{'D' * qty_500s}#{'C' * qty_100s}#{'L' * qty_50s}#{'X' * qty_10s}#{'V' * qty_5s}#{'I' * qty_1s}"
end


# p old_roman_numeral (1)
# p old_roman_numeral (4)
# p old_roman_numeral (9)
# p old_roman_numeral (15)
# p old_roman_numeral (24)
# p old_roman_numeral (60)
# p old_roman_numeral (100)
# p old_roman_numeral (14789)
