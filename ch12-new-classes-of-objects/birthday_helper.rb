birthdays = {}
File.read(birthdays.txt).each_line do |line|
	name, day, month, year = line.split(",")
	birthdays[name] = Time.gm(year, month, day)
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birthdays[name]

if date == nil
	puts "I don't know thise persons birthday"
else
	puts date
end

