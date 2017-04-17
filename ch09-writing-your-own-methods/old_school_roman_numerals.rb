=begin
Old-school Roman numerals. In the early days of Roman numerals, the
Romans didn’t bother with any of this new-fangled subtraction “IX”
nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
written “VIIII,” and so on. Write a method that when passed an integer
between 1 and 3000 (or so) returns a string containing the proper old-
school Roman numeral. In other words, old_roman_numeral 4 should return
'IIII'. Make sure to test your method on a bunch of different numbers.
Hint: Use the integer division and modulus methods on page 32.

For reference, these are the values of the letters used:

I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

=end

def old_roman_numeral num
  remainder = num
  numerals = "#{num} = "

  while remainder > 0 do
    case remainder
    when 1000..3000
      puts "here 1000"
      x = remainder / 1000
      1.upto(x) {|i| numerals = numerals + "M"}
      remainder %=1000
    when 500..999
          puts "here 500"
      x = remainder / 500
      1.upto(x) {|i| numerals = numerals + "D"}
      remainder %= 500
    when 100..499
      puts "here 100"
      x = remainder / 100
      1.upto(x) {|i| numerals = numerals + "C"}
      remainder %= 100
    when 50..99
      puts "here 50"
      x = remainder / 50
      1.upto(x) {|i| numerals = numerals + "L"}
      remainder %= 50
    when 10..49
      puts "here 10"
      x = remainder / 10
      1.upto(x) {|i| numerals = numerals + "X"}
      remainder %= 10
    when 5..9
      puts "here 5"
      x = remainder / 5
      numerals = numerals + "V"
      remainder %= 5
    when 1..4
      puts "here 1"
      1.upto(remainder) {|i| numerals = numerals + "I"}
      break
    else
      numerals = "An error has occured, I can't convert #{num}"
      break
    end
  end
  return numerals
end

=begin
puts old_roman_numeral(1)
puts old_roman_numeral(2)
puts old_roman_numeral(3)
puts old_roman_numeral(4)
puts old_roman_numeral(5)
puts old_roman_numeral(6)
puts old_roman_numeral(7)
puts old_roman_numeral(8)
puts old_roman_numeral(9)
puts old_roman_numeral(10)
puts old_roman_numeral(11)
puts old_roman_numeral(12)
puts old_roman_numeral(13)
puts old_roman_numeral(14)
puts old_roman_numeral(15)
puts old_roman_numeral(16)
puts old_roman_numeral(17)
puts old_roman_numeral(18)
puts old_roman_numeral(19)
puts old_roman_numeral(20)
puts old_roman_numeral(21)
puts old_roman_numeral(49)
puts old_roman_numeral(50)
puts old_roman_numeral(51)
puts old_roman_numeral(52)
puts old_roman_numeral(53)
puts old_roman_numeral(60)
puts old_roman_numeral(61)
puts old_roman_numeral(70)
puts old_roman_numeral(99)
puts old_roman_numeral(100)
puts old_roman_numeral(501)
puts old_roman_numeral(605)
puts old_roman_numeral(706)
puts old_roman_numeral(810)
puts old_roman_numeral(915)
puts old_roman_numeral(999)
puts old_roman_numeral(1010)
puts old_roman_numeral(1011)
puts old_roman_numeral(1018)
puts old_roman_numeral(1019)
=end


