puts 'We\'re going to find out all the leap years between two years'
puts 'Could someone give me a starting year?'
starting_year = gets.chomp.to_i
puts 'Great we have ' + starting_year.to_s + ' as our starting year!'
puts 'Could someone give me an end year?'
end_year = gets.chomp.to_i
puts 'Now we have ' + end_year.to_s + ' as our end year'
puts 'These are all the leap years between our two dates:'
leap_year = starting_year

while leap_year <= end_year
	if leap_year%4 == 0
		if leap_year%100 != 0 || leap_year%400 == 0
			puts leap_year
		end
	end

	leap_year = leap_year + 1
end