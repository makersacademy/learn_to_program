birth_dates = {}

File.read('birthdates.txt').each_line do |line|
	
	line = line.chomp
	
	first_comma = 0 
	#finding the index of the first comma so we know where the name ends.

	while line[first_comma].chr != ',' && first_comma < line.length 
		first_comma = first_comma + 1
	end

	name = line[0..(first_coma - 1)]
	date = line[-12..-1] #this range would differ depending on how the file is setup, this is based on the original format in the book example

	birth_dates[name] = date

end

puts "Whos birthday do you want to know?"
name = gets.chomp
date = birth_dates[name]

if date == nil
	puts "I don't know that one"
else
	puts date[0..5]
end
