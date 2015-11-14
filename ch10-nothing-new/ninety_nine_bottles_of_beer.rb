num_at_start = 99
num_bot = proc { |n| "#{n} bottle#{n == 1 ? '' : 's'}" }

num_at_start.downto(2) do |num|

    puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!"
    puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"

end

puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
