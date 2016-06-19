#birthday helper
birth_dates ={} #getting the names and dates from the text file 
File.read("names.txt").each_line do |line|
	line = line.chomp
	# seperating the name from the date
	first_comma = 0 
	while line[first_comma] != "," && first_comma < line.length 
		first_comma =first_comma+1
	end 
	name = line[0..(first_comma-1)] #name goes from beginning till comma
	date = line[(first_comma+1)..line.length] #date has always same amount of characters

	birth_dates[name] = date
end 
puts birth_dates.keys
puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]

if date == nil #if it's not in the list 
	puts "I do not have that in my list" 
else 
	puts date
end 

