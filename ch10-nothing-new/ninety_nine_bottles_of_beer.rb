num_at_start = 99
num_now = num_at_start
while num_now > 2
  puts "#{english_number(num_now).capitalize} bottles of beer on the wall, #{english_number(num_now)} bottles of beer!"
  num_now -= 1
  puts "Take on down, pass it around, #{english_number(num_now)} bottles of beer on the wall!"
end
puts """
 Two bottles of beer on the wall, two bottles of beer!
 Take one down, pass it around, one bottle of beer on the wall!
 One bottle of beer on the wall, one bottle of beer!
 Take one dow, pass it around, no more bottles of beer on the wall!
 """
