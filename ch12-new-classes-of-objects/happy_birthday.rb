def happy_birthday

	puts "Hello! Please enter the year you were born (yyyy)"
	year = gets.chomp.to_i
	puts "Thanks! Now please enter the Month (mm)"
	month = gets.chomp.to_i
	puts "Finally please enter the day on which you were born (dd)"
	day = gets.chomp.to_i

    years = ((Time.now - Time.new(year,month,day))/60/60/24/365)

    puts "you are #{years.to_i} old! Here is a spank for every year" + "SPANK! " * years
    
end