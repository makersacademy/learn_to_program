
puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day of the month were you born?"
day = gets.chomp.to_i

age = (Time.new - Time.gm(year, month,day)) / 31536000

puts "You are #{age.to_i} years old!"

age.to_i.times { puts "SPANK!"}
