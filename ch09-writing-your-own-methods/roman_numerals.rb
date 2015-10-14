=begin
“Modern” Roman numerals. Eventually, someone thought it would be
terribly clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you
must now suffer. Rewrite your previous method to return the new-style
Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.
=end

def roman_numeral num
  remainder = num
  numerals = ""

  while remainder > 0 do
    case remainder
    when 1000..3000
      puts "here 1000"
      x = remainder / 1000
      1.upto(x) {|i| numerals = numerals + "M"}
      remainder %=1000
     when 900..999
      puts "here 900"
      x = remainder / 900
      #1.upto(x) {|i| numerals = numerals + "CM"}
      numerals = numerals + "CM"
      remainder %= 900
    when 500..899
      puts "here 500"
      x = remainder / 500
      #1.upto(x) {|i| numerals = numerals + "D"}
      numerals = numerals + "D"
      remainder %= 500
    when 400..499
      puts "here 400"
      x = remainder / 400
      #1.upto(x) {|i| numerals = numerals + "CD"}
      numerals = numerals + "CD"
      remainder %= 400
    when 100..399
      puts "here 100"
      x = remainder / 100
      1.upto(x) {|i| numerals = numerals + "C"}
      remainder %= 100
    when 90..99
      puts "here 90"
      x = remainder / 90
      #1.upto(x) {|i| numerals = numerals + "XC"}
      numerals = numerals + "XC"
      remainder %= 90
    when 50..89
      puts "here 50"
      x = remainder / 50
      #1.upto(x) {|i| numerals = numerals + "L"}
      numerals = numerals + "L"
      remainder %= 50
     when 40..49
      puts "here 40"
      x = remainder / 40
      #1.upto(x) {|i| numerals = numerals + "XL"}
      numerals = numerals + "XL"
      remainder %= 40
    when 10..39
      puts "here 10"
      x = remainder / 10
      1.upto(x) {|i| numerals = numerals + "X"}
      remainder %= 10
    when 9
      numerals = numerals + "IX"
      break
    when 5..8
      puts "here 5"
      x = remainder / 5
      numerals = numerals + "V"
      remainder %= 5
    when 4
      puts "here 4"
      numerals = numerals + "IV"
      break
    when 1..3
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
puts roman_numeral(1)
puts roman_numeral(3)
puts roman_numeral(4)
puts roman_numeral(5)
puts roman_numeral(6)
puts roman_numeral(9)
puts roman_numeral(10)
puts roman_numeral(11)
puts roman_numeral(14)
puts roman_numeral(15)
puts roman_numeral(16)
puts roman_numeral(19)
puts roman_numeral(20)
puts roman_numeral(21)
puts roman_numeral(39)
puts roman_numeral(40)
puts roman_numeral(41)
puts roman_numeral(49)
puts roman_numeral(50)
puts roman_numeral(51)
puts roman_numeral(99)
puts roman_numeral(100)
puts roman_numeral(101)
puts roman_numeral(499)
puts roman_numeral(500)
puts roman_numeral(501)
puts roman_numeral(899)
puts roman_numeral(900)
puts roman_numeral(901)
puts roman_numeral(999)
puts roman_numeral(1000)
puts roman_numeral(1001)
puts roman_numeral(1010)
puts roman_numeral(1011)
puts roman_numeral(1018)
puts roman_numeral(1019)
=end

