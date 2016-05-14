def many_birthdays

	puts "What year (yyyy) were you born?"
	year = gets.chomp.to_i

	puts "What month (mm) were you born?"
	month = gets.chomp.to_i

	puts "What day (dd) were you born?"
	day = gets.chomp.to_i

	age = (Time.now - Time.new(year, month, day))/ 60 / 60 / 24 / 365

	birthday_spank = "SPANK!\n" * age

	puts birthday_spank

end