birth_time = []

def check_integer num
	year_joined = []
x = 0
num.split("").each do |char| 
 if ('a'..'z').cover?(char)
 	x = 1
 end
 end
 if x == 1
 	puts 'Please state using numbers (YYYY, MM, DD, HH, MM, SS)'
 	correction = gets.chomp
 	check_integer correction
 	return correction
 else
 	return num
 end
 end
 
 puts 'What year were you born? Please state year in number(YYYY)'
 year = gets.chomp
 year = check_integer year
 while year.length < 4 || year.length > 4
 	puts 'I doubt it, try again:'
 	year = gets.chomp
 	year = check_integer year
 end
 
#birth_time << year

puts 'What month were you born? Please state month in numbers (MM)'
month = gets.chomp
month = check_integer month
while month.to_i > 12 || month.to_i < 1
	puts '12 months in a year dumbass, try again:'
	month = gets.chomp
	month = check_integer month
end
#birth_time << month
#puts birth_time

puts 'What day were you born? Please state day in number (DD)'
day = gets.chomp
day = check_integer day
while day.to_i > 31 || day.to_i < 1
	puts 'Dont think thats correct, try again:'
	day = gets.chomp
	day = check_integer day
end


puts 'What hour of the day were you born? Please state hour in number (HH)'
hour = gets.chomp
hour = check_integer hour
while hour.to_i > 24 || hour.to_i < 0
	puts 'Nope, try again:'
	hour = gets.chomp
	hour = check_integer hour
end

puts 'What minute of the hour were you born? Please state hour in number (MM)'
minute = gets.chomp
minute = check_integer minute
while minute.to_i > 60 || minute.to_i < 0
	puts 'Awesome understanding of minute well done, try again:'
	minute = gets.chomp
	minute = check_integer minute
end

puts 'What second of the minute were you born? Please state minute in number (SS)'
second = gets.chomp
second = check_integer second
while second.to_i > 60 || second.to_i < 0
	puts 'So close yet so far away, try again:'
	second = gets.chomp
	second = check_integer second
end


puts birthday = Time.new(year, month, day, hour, minute, second)
age_seconds = Time.new - birthday
age_minutes = age_seconds/60
age_hours = age_minutes/60
age_days = age_hours/24
age_years = age_days/365
puts "Spank"*age_years