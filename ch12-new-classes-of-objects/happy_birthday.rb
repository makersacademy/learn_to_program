puts "What year were you born?"
year = gets.chomp
puts "What month were you born in? Please use a number"
month = gets.chomp
puts "What day were you born? Please use a number"
day = gets.chomp

age = Time.new - Time.mktime(year.to_i, month.to_i, day.to_i)
birthdays = ((((age.to_i / 60)/ 60)/ 24)/ 365)

birthdays.to_i.times {
	puts "SPANK!"
}

#puts birthdays.to_i
