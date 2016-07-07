# your code here

#-------------------------My Answer---------------
#used current_num.to_s instead of english_num, would give integer rather than worded number


starting_num = 10
current_num = starting_num
#loop required
while current_num > 2
puts english_number(current_num).capitalize + + 'bottles of ber on the wall,' + english_number(current_num) + 'bottles of beer!'
current_num = current_num - 1
puts 'take one down, pass it around,' + english_number(num_now) + ' bottles of beer on the wall!'
end 
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts 'One bottle of beer on the wall, 1 bottle of beer!'
puts 'take one down, pass it around, no more bottles of beer on the wall!'
