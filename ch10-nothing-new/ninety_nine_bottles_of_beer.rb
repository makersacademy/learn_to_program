=begin
 bottle = 99
  num = 1

while bottle >= num do

puts "#{bottle} bottle\'s of beer on the wall, #{bottle} bottle\'s of beer, you put one down pass it around, now there\'s #{bottle-1} bottles of beer on the wall"

bottle -= 1
end
=end
num_at_start = 5 # change to 9999 if you want
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end
