require_relative 'english_number.rb'
 
start = 9999

start.downto(3) do |num|
  num_bot =  "#{english_number num} bottle#{num == 1 ? '' : 's'}"
  num_bot_prev = english_number(num -1)
  puts "#{num_bot} of beer on the wall, #{num_bot} of beer!".capitalize
  puts "Take one down, pass it around, #{num_bot_prev} beers on the wall!"
end

puts "Two bottles of beer on the wall, two bottles of beer!".capitalize
puts "Take one down, pass it around, one beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!".capitalize
puts "Take one down, pass it around, no more bottles of beer on the wall!"



