puts 'Please enter the full name of the person whose birthday you want to know'
full_name = gets.chomp

Dir.chdir '/Users/rosie/Projects/learn_to_program/ch12-new-classes-of-objects/'

birth_dates = Hash.new
name = 
birth_date = 
birthday_file_name = 'birthdates.txt'

# Open file
# Read each line and break it up, adding name as the key and date as the value to the hash
File.open(birthday_file_name)  do |f|
		f.each do |line|
			info = line.split(", ")
			name = info[0]
			birth_date = info[1]
			birth_dates["#{name}"] = birth_date
		end
	end

# Takes the date from the file and works out whether they've had their birthday already this year
require 'date'
date = birth_dates[full_name]
date = Date.parse(date)
birthdate_day = date.day
birthdate_month = date.month
birthday_this_year = Date.new(Date.today.year,date.month,date.day)
birthday_next_year = Date.new(Date.today.year,date.month,date.day) + 365
birthday_past_or_future = (Date.today - birthday_this_year).to_i # If result is negative, they haven't had their birthday yet this year

if birthday_past_or_future < 0
	puts "The next birthday #{full_name} will have will be on #{birthday_this_year}"
 else
 	puts "The next birthday #{full_name} will have will be on #{birthday_next_year}"
end
