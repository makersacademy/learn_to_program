puts "Hey, what year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

age = (Time.new - Time.mktime(year, month, day)) / 60 / 60 / 24 / 365
puts age
puts
age.to_i.times {
	puts "SPANK!"
}
