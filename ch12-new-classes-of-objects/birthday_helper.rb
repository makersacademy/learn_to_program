
birthday_file = File.read "birthday_file.txt"

birth_dates = Hash.new

birthday_file.each_line do |line|
	line = line.chomp
	first_comma = 0 
	while line[first_comma] != "," && first_comma != line.length
		first_comma += 1
	end
	name = line[0..(first_comma-1)]
	date = line[(first_comma+1..-1)]

	birth_dates[name] = date
end

puts "Whose birthday would you like to know?"
selected = gets.chomp
date = birth_dates[selected]
	if date == nil 
	puts "Not on the list" 
	else puts date
	end

