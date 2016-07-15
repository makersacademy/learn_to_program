require_relative 'english_number'

puts "How many bottles?"
bottle_num = gets.chomp.to_i
while bottle_num > 0
  puts english_number(bottle_num) + " bottles of beer on the wall, " + english_number(bottle_num) + " bottles of beer."
  bottle_num -= 1
  puts "Take one down and pass it around, " + english_number(bottle_num) + " bottles of beer on the wall."
end
