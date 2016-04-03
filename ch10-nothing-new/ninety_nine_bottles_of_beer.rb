# your code here
num_bot = 5
while num_bot > 2
  puts english_number(num_bot).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_bot) + ' bottles of beer!'
  num_bot -= 1
  puts 'Take one down, pass it around, ' +
    english_number(num_bot) + ' bottles of beer on the wall!'
end
puts "One bottle of beer on the wall, one bottle of beer!", "Take one down, pass it around, no more bottles of beer on the wall!"
