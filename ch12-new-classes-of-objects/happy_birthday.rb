puts "What year was your born in? Please use the following format: YYYY"
year = gets.chomp.to_i
puts "What month was you born in? Please select a number between 1 and 12."
month = gets.chomp.to_i
puts "What day was you born on? Please select a number between 1 and 31."
day = gets.chomp.to_i

time = Time.new
age = 1

while Time.local(year + age, month, day) <= time
	puts 'SPANK!'
	age += 1
end