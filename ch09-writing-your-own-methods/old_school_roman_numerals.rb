# Old-school Roman numerals. In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled subtraction “IX” nonsense. No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old- school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. Make sure to test your method on a bunch of different numbers. Hint: Use the integer division and modulus methods on page 32.
# For reference, these are the values of the letters used:
# I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

def old_roman_numeral num
  many_thousands = num / 1000
  num -= many_thousands * 1000

  many_fundreds = num / 500
  num -= many_fundreds * 500

  many_hundreds = num / 100
  num -= many_hundreds * 100

  many_fifties = num / 50
  num -= many_fifties * 50

  many_tens = num / 10
  num -= many_tens * 10

  many_fives = num / 5
  num -= many_fives * 5

  "#{"M" * many_thousands}#{"D" * many_fundreds}#{"C" * many_hundreds}#{"L" * many_fifties}#{"X" * many_tens}#{"V" * many_fives}#{"I" * num}"
end

p old_roman_numeral 2435
p old_roman_numeral 594
p old_roman_numeral 52
p old_roman_numeral 3
