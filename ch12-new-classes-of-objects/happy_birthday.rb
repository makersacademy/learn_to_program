# puts 'What year were you born' 
# year = gets.chomp
# puts 'What month were you born' 
# month = gets.chomp
# puts 'What day were you born' 
# day = gets.chomp

monthconversion = Hash.new
monthconversion['January'] = 1
monthconversion['February'] = 2
monthconversion['March'] = 3
monthconversion['April'] = 4
monthconversion['May'] = 5
monthconversion['June'] = 6
monthconversion['July'] = 7
monthconversion['August'] = 8
monthconversion['September'] = 9
monthconversion['October'] = 10
monthconversion['November'] = 11
monthconversion['December'] = 12

day = 13
month = 'June'
year = 1987
if month.is_a?(Integer)
	if (month < 1 && month > 12)
		puts 'Please enter a valid month (1-12), or month name (January-December)'
		month = gets.chomp
	end
else
	if (month.is_a?(String) && monthconversion.has_key?(month.capitalize))
		month = monthconversion[month.capitalize]
	else
		puts 'Please enter a valid month (1-12), or month name (January-December)'
		month = gets.chomp
	end
end

compareDate = Time.local(year, month, day)
currentDate = Time.now

monthdiff = ((currentDate.year - compareDate.year) * 12 + (currentDate.month - compareDate.month))/12
monthdiff.times do |x|
	puts 'SPANK!'
end

#puts compareDate