birth_dates = {}

File.read("birthdates.txt").each_line do |line|
	line = line.chomp

	first_comma = 0
	while line[first_comma].chr != "," && first_comma<line.length
		first_comma += 1
	end

	name = line[0..(first_comma - 1)]
	date = line[-10..-1]

	birth_dates[name] = date
end

puts "Who's birthday do you want to know?"
person = gets.chomp
if birth_dates[person] == nil
	puts "Sorry but I don't know that person"
else
	dates = birth_dates[person].split("/")
	puts "#{person}'s birthday is the #{dates[0]}/#{dates[1]}"
	now = Time.new
	DOB = Time.local(dates[2],dates[1],dates[0])
	age_s = now - DOB
	StoY = 60 * 60 * 24 * 365.5
	age = ( age_s / StoY ).floor
	puts "and they are #{age} years old"
end