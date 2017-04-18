def happyBirthday
	puts 'What year were you born in?'
	year = gets.chomp
	puts 'What month?'
	month = gets.chomp
	puts 'What day?'
	day = gets.chomp
	dob = Time.new(year, month, day)
	now = Time.now
	age = now.year - dob.year - (now.strftime('%m%d') < dob.strftime('%m%d') ? 1 : 0)
	puts "You get #{age} spanks"
	'SPANK! ' * age
end

puts happyBirthday

