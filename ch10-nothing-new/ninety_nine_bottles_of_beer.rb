=begin
“Ninety-nine Bottles of Beer on the Wall.” Using english_number and your old program on page 49, write out the lyrics to this song the right way this time. Punish your computer: have it start at 9999. (Don’t pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you’ll be punishing yourself as well!)
=end

#How Chris Pine would do it
# english_number as above, plus this:
num_at_start = 5 # change to 9999 if you want
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end

# puts "Two bottles of beer on the wall, two bottles of beer!"
# puts "Take one down, pass it around, one bottle of beer on the wall!"
# puts "One bottle of beer on the wall, one bottle of beer!"
# puts "Take one down, pass it around, no more bottles of beer on the wall!"

#How I would do it
=begin
# english_number as above, plus this:

num_at_start = 5 # change to 9999 if you want

num_bot = proc { |n| "#{english_number n} bottle#{n == 1 ? '' : 's'}" }

num_at_start.downto(2) do |num|
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!".capitalize
  puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end

puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!".capitalize
puts "Take one down, pass it around, no more bottles of beer on the wall!"
=end