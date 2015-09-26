birth_dates = {}


birth_info = File.read '/home/alaan/Projects/learn_to_program/birth_dates.txt'

birth_info.each_line do |x|
	x = x.chomp
	index = 0
	

	while x[index] != ',' && index < x.length
	index += 1
end
		comma_position = index
		name = x[0..comma_position - 1]
		date = x[comma_position +1..-1]

		birth_dates[name] = date
		
	end




	
	p birth_dates


puts "Please select the name of the person whose birthday you wish to know"
response = gets.chomp
date = birth_dates[response]

if date == birth_dates[response]
	puts "#{response} was born on: #{birth_dates[response]}"
else
	puts "Name not recognised"
end




