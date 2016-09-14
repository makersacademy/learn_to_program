birth_dates = {}
File.read('birthdays.txt').each_line do |line|
	line = line.chomp
	first_comma = 0
	while line[first comma] != ',' &&
		first_comma = first_comma + 1
	end

	name = line[0..(first_comma -1)]
	date = line[-12..-1]
	end

	puts 'Whose birthday would you like to know?'
	name = gets.chomp
	date = birth_dates[name]

	if date == nil
		puts 'No matches were found'
	else
		puts date [0..5]
	end