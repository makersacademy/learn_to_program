input = File.read 'birthdays.txt'

months = {
	'Jan' => 1,
	'Feb' => 2,
	'Mar' => 3,
	'Apr' => 4,
	'May' => 5,
	'Jun' => 6,
	'Jul' => 7,
	'Aug' => 8,
	'Sep' => 9,
	'Oct' => 10,
	'Nov' => 11,
	'Dec' => 12,
}

birthdays = {}

input.each_line do |x|
	entry = x.split(',')
	birthdays[entry[0]] = entry[1]+","+entry[2]
	
	# This constructs a hash containing all our information

end
puts "Please enter a name to retrieve their birthday info:"
name = gets.chomp
if birthdays.include?(name)
	month = months[birthdays[name].split(',')[0].split[0]]
	day = birthdays[name].split(',')[0].split[1]
	year = birthdays[name].split(',')[1]

	current_year = Time.new.year
	next_birthday_year = Time.new.year

	next_birthday_year += 1 if Time.new > Time.local(current_year, month.to_i, day.to_i)

	# In other words, add a year if the person's birthday had already passed. Remeber that Time.new gives the current time,
	# and Time local gives whatever time you want depending on the parameters you enter. Here we are asking it to enter the
	# current year (to match the result of Time.new) but with the specific month and day of the persons birthday.

	how_old = (Time.new - Time.local(year.to_i, month.to_i, day.to_i))/315576600+1

	# This subtraction gives the answer in seconds so we must divide the answer by the annual number of seconds to get years,
	# and add 1 year.

	puts "#{name}'s next birthday is on #{months.key(month.to_i)} #{day}, #{next_birthday_year} and they will be #{how_old.to_i} years old"
else
	puts "That name is not on the list."
end

