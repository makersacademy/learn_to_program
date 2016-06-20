def happy_birthday
	puts "What year were you born in? (YYYY)"
	year = gets.chomp
	puts "What month were you born in? (MM)"
	month = gets.chomp
	puts "What day were you born on? (DD)"
	day = gets.chomp

	birthdate = Time.local(year,month,day)
	age = (Time.now-birthdate)/60/60/24/365
	age.floor.times{|y| puts "SPANK!"}
end
happy_birthday