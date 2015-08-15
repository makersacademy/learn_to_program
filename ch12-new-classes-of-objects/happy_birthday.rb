def leap_year(year)
	if year%100 ==0
		return year%400 == 0 ? true : false
	else
		return year%4 == 0 ? true : false
	end
end

def age_diff(year1,month1,date1,year2,month2,date2)
	
	days_in_month1 = [0,31,28,31,30,31,30,31,31,30,31,30,31]
	days_in_month1[2] = 29 if leap_year(year1) 
	days_in_month2 = [0,31,28,31,30,31,30,31,31,30,31,30,31]
	days_in_month2[2] = 29 if leap_year(year2) 
	
	days1 = 0
	for i in 0..month1-1
		days1 += days_in_month1[i]
	end 
	days1 += date1
	
	days2 = 0
	for i in 0..month2-1
		days2 += days_in_month2[i]
	end 
	days2 += date2

	if (month1>month2 || (month1 == month2 && date1 >= date2))
		year_diff = year1 - year2
		day_diff = days1 - days2
	else			
		if leap_year(year1-1)
			days_in_year = 366
		else
			days_in_year = 365
		end
		days1 += days_in_year
		year_diff = year1 - year2 - 1
		day_diff = days1 - days2
	end
	
	#puts "days1 #{days1} days2 #{days2} #{year_diff} years #{day_diff} days"#for testing only
	result = []
	result << year_diff
	result << day_diff
	return result
end

def ask_birthday
	birthday = []
	puts ""; puts "Please the year of your birth (eg. 1990):"; puts ""
	year = gets.chomp.to_i; birthday << year
	puts ""; puts "Please enter the month of your birth (eg. 9 for September):"; puts ""
	month = gets.chomp.to_i; birthday << month
	puts ""; puts "Please enter the day of your birth (eg. 13 for 13th):"; puts ""
	day = gets.chomp.to_i; birthday << day
	return birthday
end

def happy_birthday
	birthday = ask_birthday
	time_now = Time.new
	age = age_diff(time_now.year,time_now.month,time_now.day,birthday[0],birthday[1],birthday[2])
	age[0].times{puts "SPANK!"}
	return nil
end	

def happy_birthday_v2
	birthday = ask_birthday
	time_now = Time.new
	time_birth = Time.local(birthday[0],birthday[1],birthday[2])
	seconds_ave_year = 365.25*24*3600
	age = ((time_now - time_birth) / seconds_ave_year).to_i
	age.times{puts "SPANK!"}
	return nil
end	

puts "#{happy_birthday}"
puts "#{happy_birthday_v2}"
