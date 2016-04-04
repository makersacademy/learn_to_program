		puts "What year were you born?"
			year = gets.chomp.to_i

		puts "What month were you born?"
			month = gets.chomp.to_i

		puts "What day were you born?"
			day = gets.chomp.to_i

		bday = Time.local(year, month, day)
		age = Time.now.year - bday.year

		if Time.now.month < bday.month
				age -= 1
		end

		age.times {puts "SPANK!"}
