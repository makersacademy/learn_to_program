require 'date'
require 'time_difference'

current_date = Time.now
puts current_date

birth_dates = {}

# write a program to read in names and birth dates from a text file
File.readlines('birthdays.txt').each do |line|
	name, date, year = line.split(',')
	birth_dates[name] = Time.gm(year, *(date.split)) #gives birth time in year-month-date-hour-minute-second format
end

# ask for a name
puts "Please type the name you require: "
name = gets.chomp
puts

# getting dates in the format we would like
bday = birth_dates[name].strftime("%e of %B, %Y.")
bday_month = birth_dates[name].strftime("%B")
bday_date = birth_dates[name].strftime("%e")

age_in_years = TimeDifference.between(bday, current_date).in_years.to_i

# output
puts "#{name} will be #{age_in_years+1} on #{bday_date} of #{bday_month}.#{}"
