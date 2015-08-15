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

#age_diff(2014,2,28,2012,2,29)
#age_diff(2014,3,1,2012,2,29)

def birthday_helper(bd_file_dir)
	months = {Jan:1,Feb:2,Mar:3,Apr:4,May:5,Jun:6,Jul:7,Aug:8,Sep:9,Oct:10,Nov:11,Dec:12}
	bd_string = File.read(bd_file_dir)
	bd_array = Array.new
	bd_string.each_line do |x|
		array_temp = x.split(' ')
		array_temp.collect! do |z|
			z.tr(',','')
		end
		bd_array << array_temp		
	end
	#puts "#{bd_array}"	
	puts ""
	puts "Please enter the first name of the person you are looking for:"
	puts ""
	first_name = gets.chomp.downcase.capitalize
	puts ""
	puts "Please enter the second name of the person you are looking for:"
	puts ""
	second_name = gets.chomp.downcase.capitalize
	puts ""
	i = 0
	while true
		if (first_name == bd_array[i][0] && second_name == bd_array[i][1])
			now = Time.new()
			year1 = now.year.to_i
			month1 = now.month.to_i
			date1 = now.day.to_i
			year2 = bd_array[i][4].to_i
			month2 = months[bd_array[i][2].to_sym].to_i
			date2 = bd_array[i][3].to_i
			#puts "#{year1} #{month1} #{date1} #{year2} #{month2} #{date2}"   #for testing
			age_diff = age_diff(year1,month1,date1,year2,month2,date2)
			puts "#{first_name} #{second_name}'s birth date is #{bd_array[i][2]} #{bd_array[i][3]} #{bd_array[i][4]}."
			puts ""
			puts "#{first_name} #{second_name} is currently #{age_diff[0]} years and #{age_diff[1]} days old."
			return age_diff
		elsif i >= bd_array.length-1
			puts "#{first_name} #{second_name}'s birth date is not in the list."
			return nil
		end 
		i += 1
	end	
end

birthday_helper('/Users/joekelly/desktop/projects/learn_to_program/ch12-new-classes-of-objects/birthday names.txt')