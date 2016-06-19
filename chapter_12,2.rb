def happy_birthday 
	puts "Which year you were born?"
	year = gets.chomp.to_i
	puts "Which month you were born?"
	month = gets.chomp.to_i
	puts "Which day you were born?"
	day = gets.chomp.to_i
	t = Time.new
	#b = Time.local(b_year, b_month, b_day)
	#t = Time.new
	#age = 1
	#while Time.local(b_year + age, b_month, b_day) <= t
	# puts 'SPANK!'
	# age = age + 1 
	#end
	if  t.month > month || (t.month == month && t.day >= day)
		age = t.year - year
		puts "Your are #{age} years old"
	else 
		age = t.year - year -1 
		puts "You are #{age} years old"
			
	end 
end 
happy_birthday

