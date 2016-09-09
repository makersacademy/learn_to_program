puts "In what year were you born (e.g. 1987)?"
birth_year = gets.chomp

puts "In what number month were you born (e.g. March)?"
birth_month = gets.chomp

puts "Which day of the month were you born on (e.g. 18)?"
birth_day = gets.chomp

months = { "January" => 1,
		   "February" => 2,
		   "March" => 3,
		   "April" => 4,
		   "May" => 5,
		   "June" => 6,
		   "July" => 7,
		   "August" => 8,
		   "September" => 9,
		   "October" => 10,
		   "November" => 11,
		   "December" => 12 }


seconds_in_a_year = (Time.gm(1987) - Time.gm(1986))
time_of_birth = Time.local("#{birth_year}".to_i, months.key("#{birth_month}"), "#{birth_day}".to_i)
time_now = Time.new
birthdays = ((time_now - time_of_birth)/seconds_in_a_year).floor
puts "SPANK!\n" * birthdays.to_i