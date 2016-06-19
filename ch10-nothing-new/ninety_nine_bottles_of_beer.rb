# your code here
starting_num = 9999
current_num = starting_num
#loop required
while current_num > 1
puts current_num.to_s + 'bottles of ber on the wall,' + current_num.to_s + 'bottles of beer!'
current_num = current_num - 1
puts 'take one down, pass it around,' + current_num + ' bottles of beer on the wall!'
until current_num == 1
puts '1 bottle of beer on the wall, 1 bottle of beer!'
puts 'take one down, pass it around, no more bottles of beer on the wall!'
end
end
