puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day were you born?"
day = gets.chomp.to_i

time_now = Time.new

age = time_now.year - year

if time_now.month < month || (time_now.month == month && time_now.day < day)
	age -= 1
end

age.times { puts 'SPANK!'}


