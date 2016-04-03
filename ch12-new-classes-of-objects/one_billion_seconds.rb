#get birthday
puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

#compare today with birthday
birthday = Time.local(year, month, day) + (10**9)
