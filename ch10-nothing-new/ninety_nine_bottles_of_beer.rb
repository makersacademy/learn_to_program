require './ch10-nothing-new/english_number.rb'

bottles = 5
num_bottles = bottles

while bottles > 1
  puts english_number(num_bottles).capitalize + " bottles of beer on the wall, " + english_number(num_bottles) + " bottles of beer!"
  puts "Take one down and pass it around, " + english_number(num_bottles-1) + " bottles of beer on the wall."
  puts ""
  bottles = bottles - 1
end

puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down and pass it around, no more bottle of beer on the wall!"