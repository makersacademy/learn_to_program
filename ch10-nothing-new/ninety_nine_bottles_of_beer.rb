





99.downto(1) do |n|
	puts "#{n} bottles of beer on the wall, #{n} bottles of beer, "
	puts "take one pass it round, #{n-1} bottles of beer on the wall,"
end# your code here

#Below how he would do it


num_at_start = 5 # change to 9999 if you want

num_bot = proc { |n| "#{english_number n} bottle#{n == 1 ? '' : 's'}" }

num_at_start.downto(2) do |num|
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!".capitalize
  puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end

puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!".capitalize
puts "Take one down, pass it around, no more bottles of beer on the wall!"