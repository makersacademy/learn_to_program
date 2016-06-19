puts "What year were you born?"
year = gets.chomp
puts "What month were you born? Please enter a number"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

birthday = Time.local(year, month, day)

age = ((Time.new - birthday)/60/60/24/365).to_i

puts "You are #{age} years old"

puts "SPANK!" * age


