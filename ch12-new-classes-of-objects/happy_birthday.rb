def its_your_birthday

	puts "What year were you born? (yyyy) format please"
	year = gets.chomp.to_i

	puts "What month were you born? (mm) format please"
	month = gets.chomp.to_i

	puts "What day were you born? (dd) format please"
	day = gets.chomp.to_i

	age = (Time.now - Time.new(year, month, day)) / 60 / 60 / 24 / 365

	birthday_spank = "SPANK!" * age

	puts birthday_spank

end