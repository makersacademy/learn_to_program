=begin
• Old-school Roman numerals. In the early days of Roman numerals, the

Romans didn’t bother with any of this new-fangled subtraction “IX”

nonsense. No sir, it was straight addition, biggest to littlest—so 9 was

written “VIIII,” and so on. Write a method that when passed an integer

between 1 and 3000 (or so) returns a string containing the proper old-
school Roman numeral. In other words, old_roman_numeral 4 should return

'IIII'. Make sure to test your method on a bunch of different numbers. Hint:

Use the integer division and modulus methods on page 32.

For reference, these are the values of the letters used:

I = 1 V = 5 X = 10 L = 50

C = 100 D = 500 M = 1000
=end


def old_roman_numeral num
  romanstring = ""

  romanstring << "M"*(num/1000)                 # Number of thousands
  romanstring << "D"*(num % 1000 /500)          # Number of 500s
  romanstring << "C"*(num % 500/100)            # Number of 100s
  romanstring << "L"*(num % 100/50)             # Number of 50s
  romanstring << "X"*(num % 50/10)              # Number of 10s
  romanstring << "V"*(num % 10/5)               # Number of 5s
  romanstring << "I"*(num % 5)                  # Number of units

  romanstring
end

puts old_roman_numeral 1
puts old_roman_numeral 9
puts old_roman_numeral 17
puts old_roman_numeral 68
puts old_roman_numeral 103
puts old_roman_numeral 721
puts old_roman_numeral 1034
puts old_roman_numeral 3234
