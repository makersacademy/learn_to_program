puts "What year were you born?"
year = gets.chomp.to_i
puts "What month?"
month = gets.chomp.to_i
puts "And what day?"
day = gets.chomp.to_i

b_day = Time.new(year, month, day)

spank = ((Time.new - b_day) /60/60/24/365).to_i

spank.times {puts "SPANK!"}




