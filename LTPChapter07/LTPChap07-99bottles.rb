num = 8

current = num

while current > 2
  puts current.to_s + ' bottles of beer on the wall, ' +
       current.to_s + ' bottles of beer!'
  current = current - 1

  puts 'Take one down, pass it around, ' +
       current.to_s + ' bottles of beer on the wall!'

end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beee!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
