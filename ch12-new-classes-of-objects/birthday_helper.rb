def birthday_helper filename
	birth_dates = {}
	temp_line = []
	File.read(filename).each_line do |line|
		line = line.chomp
		temp_line = line.split!(",")
		name = temp_line[0]
		date = temp_line[1] + "," + temp_line[2]
		birth_dates[name] = date
	end

	puts "Which person's birthday and age would you like to know?"
	gets.chomp = name
	date = birth_dates[name]
	age = ( Time.new - Time.new(date(-4..-1),date(0..2), date(4..5)) ) / 365 / 24 / 60 / 60

	if birthday == nil then puts "Sorry, I don't know this person's birthday or age."
	else puts "#{name}'s birthday is #{date(0..5)} and he/she is #{age} years old." end
end
	
