puts "What year were you born?"

year = gets.chomp.to_i

puts "What number month were you born?"

month = gets.chomp.to_i

puts "What number day of the month were you born?"

day = gets.chomp.to_i

puts(Time.gm(year, month, day) + 10**9)